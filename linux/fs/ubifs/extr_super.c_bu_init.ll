; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_bu_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_bu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i64, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@UBIFS_KMALLOC_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"cannot allocate %d bytes of memory for bulk-read, disabling it\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*)* @bu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bu_init(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  %3 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %4 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %5 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 1
  %8 = zext i1 %7 to i32
  %9 = call i32 @ubifs_assert(%struct.ubifs_info* %3, i32 %8)
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %54

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %39, %16
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %19 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load i32, i32* @__GFP_NOWARN, align 4
  %23 = or i32 %21, %22
  %24 = call i64 @kmalloc(i64 %20, i32 %23)
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %26 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i64 %24, i64* %27, align 8
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %54, label %33

33:                                               ; preds = %17
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %35 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UBIFS_KMALLOC_OK, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i64, i64* @UBIFS_KMALLOC_OK, align 8
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  br label %17

43:                                               ; preds = %33
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @ubifs_warn(%struct.ubifs_info* %44, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %50 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %15, %43, %17
  ret void
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i64 @kmalloc(i64, i32) #1

declare dso_local i32 @ubifs_warn(%struct.ubifs_info*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
