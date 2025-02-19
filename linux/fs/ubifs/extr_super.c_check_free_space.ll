; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_check_free_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_check_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [45 x i8] c"insufficient free space to mount in R/W mode\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @check_free_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_free_space(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %4 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %5 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %6 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @ubifs_assert(%struct.ubifs_info* %4, i32 %9)
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %12 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %16 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %14, %18
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %26 = call i32 @ubifs_err(%struct.ubifs_info* %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 1
  %30 = call i32 @ubifs_dump_budg(%struct.ubifs_info* %27, i32* %29)
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %32 = call i32 @ubifs_dump_lprops(%struct.ubifs_info* %31)
  %33 = load i32, i32* @ENOSPC, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @ubifs_dump_budg(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @ubifs_dump_lprops(%struct.ubifs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
