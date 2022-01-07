; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ext4.h_ext4_chksum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ext4.h_ext4_chksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_sb_info = type { i32 }
%struct.anon = type { %struct.shash_desc, [4 x i8] }
%struct.shash_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_sb_info*, i32, i8*, i32)* @ext4_chksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_chksum(%struct.ext4_sb_info* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ext4_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.anon, align 4
  store %struct.ext4_sb_info* %0, %struct.ext4_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %11 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @crypto_shash_descsize(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 4
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %19 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %22 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 0
  %26 = bitcast i8* %25 to i32*
  store i32 %23, i32* %26, align 4
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @crypto_shash_update(%struct.shash_desc* %27, i8* %28, i32 %29)
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %32, i64 0, i64 0
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34, align 4
  ret i32 %35
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @crypto_shash_descsize(i32) #1

declare dso_local i32 @crypto_shash_update(%struct.shash_desc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
