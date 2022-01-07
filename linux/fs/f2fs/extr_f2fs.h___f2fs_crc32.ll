; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h___f2fs_crc32.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h___f2fs_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.anon = type { %struct.shash_desc, [4 x i8] }
%struct.shash_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32, i8*, i32)* @__f2fs_crc32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__f2fs_crc32(%struct.f2fs_sb_info* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.anon, align 4
  %10 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %12 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @crypto_shash_descsize(i32 %13)
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 4
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %20 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %23 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %25, i64 0, i64 0
  %27 = bitcast i8* %26 to i32*
  store i32 %24, i32* %27, align 4
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @crypto_shash_update(%struct.shash_desc* %28, i8* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %34, i64 0, i64 0
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %36, align 4
  ret i32 %37
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
