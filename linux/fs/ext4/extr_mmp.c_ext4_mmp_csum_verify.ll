; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mmp.c_ext4_mmp_csum_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mmp.c_ext4_mmp_csum_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.mmp_struct = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.mmp_struct*)* @ext4_mmp_csum_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_mmp_csum_verify(%struct.super_block* %0, %struct.mmp_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.mmp_struct*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.mmp_struct* %1, %struct.mmp_struct** %5, align 8
  %6 = load %struct.super_block*, %struct.super_block** %4, align 8
  %7 = call i32 @ext4_has_metadata_csum(%struct.super_block* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %19

10:                                               ; preds = %2
  %11 = load %struct.mmp_struct*, %struct.mmp_struct** %5, align 8
  %12 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = load %struct.mmp_struct*, %struct.mmp_struct** %5, align 8
  %16 = call i64 @ext4_mmp_csum(%struct.super_block* %14, %struct.mmp_struct* %15)
  %17 = icmp eq i64 %13, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %10, %9
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @ext4_has_metadata_csum(%struct.super_block*) #1

declare dso_local i64 @ext4_mmp_csum(%struct.super_block*, %struct.mmp_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
