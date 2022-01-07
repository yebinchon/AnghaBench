; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_reiserfs.h_le_key_k_type.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_reiserfs.h_le_key_k_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_key = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@KEY_FORMAT_3_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.reiserfs_key*)* @le_key_k_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @le_key_k_type(i32 %0, %struct.reiserfs_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.reiserfs_key*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.reiserfs_key* %1, %struct.reiserfs_key** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.reiserfs_key*, %struct.reiserfs_key** %5, align 8
  %12 = getelementptr inbounds %struct.reiserfs_key, %struct.reiserfs_key* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @uniqueness2type(i32 %17)
  store i32 %18, i32* %3, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.reiserfs_key*, %struct.reiserfs_key** %5, align 8
  %21 = getelementptr inbounds %struct.reiserfs_key, %struct.reiserfs_key* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @offset_v2_k_type(i32* %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %10
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @uniqueness2type(i32) #1

declare dso_local i32 @offset_v2_k_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
