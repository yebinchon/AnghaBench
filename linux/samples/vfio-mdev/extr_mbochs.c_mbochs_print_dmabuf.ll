; ModuleID = '/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mbochs.c_mbochs_print_dmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mbochs.c_mbochs_print_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbochs_dmabuf = type { i32, %struct.TYPE_3__, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [71 x i8] c"%s/%d: %c%c%c%c, %dx%d, stride %d, off 0x%llx, size 0x%llx, pages %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbochs_dmabuf*, i8*)* @mbochs_print_dmabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbochs_print_dmabuf(%struct.mbochs_dmabuf* %0, i8* %1) #0 {
  %3 = alloca %struct.mbochs_dmabuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.mbochs_dmabuf* %0, %struct.mbochs_dmabuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.mbochs_dmabuf*, %struct.mbochs_dmabuf** %3, align 8
  %8 = getelementptr inbounds %struct.mbochs_dmabuf, %struct.mbochs_dmabuf* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.device* @mdev_dev(i32 %11)
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.mbochs_dmabuf*, %struct.mbochs_dmabuf** %3, align 8
  %14 = getelementptr inbounds %struct.mbochs_dmabuf, %struct.mbochs_dmabuf* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.mbochs_dmabuf*, %struct.mbochs_dmabuf** %3, align 8
  %20 = getelementptr inbounds %struct.mbochs_dmabuf, %struct.mbochs_dmabuf* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = ashr i32 %25, 0
  %27 = and i32 %26, 255
  br label %29

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ 45, %28 ]
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = ashr i32 %34, 8
  %36 = and i32 %35, 255
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i32 [ %36, %33 ], [ 45, %37 ]
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = ashr i32 %43, 16
  %45 = and i32 %44, 255
  br label %47

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i32 [ %45, %42 ], [ 45, %46 ]
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = ashr i32 %52, 24
  %54 = and i32 %53, 255
  br label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i32 [ %54, %51 ], [ 45, %55 ]
  %58 = load %struct.mbochs_dmabuf*, %struct.mbochs_dmabuf** %3, align 8
  %59 = getelementptr inbounds %struct.mbochs_dmabuf, %struct.mbochs_dmabuf* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mbochs_dmabuf*, %struct.mbochs_dmabuf** %3, align 8
  %63 = getelementptr inbounds %struct.mbochs_dmabuf, %struct.mbochs_dmabuf* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mbochs_dmabuf*, %struct.mbochs_dmabuf** %3, align 8
  %67 = getelementptr inbounds %struct.mbochs_dmabuf, %struct.mbochs_dmabuf* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mbochs_dmabuf*, %struct.mbochs_dmabuf** %3, align 8
  %71 = getelementptr inbounds %struct.mbochs_dmabuf, %struct.mbochs_dmabuf* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mbochs_dmabuf*, %struct.mbochs_dmabuf** %3, align 8
  %75 = getelementptr inbounds %struct.mbochs_dmabuf, %struct.mbochs_dmabuf* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mbochs_dmabuf*, %struct.mbochs_dmabuf** %3, align 8
  %79 = getelementptr inbounds %struct.mbochs_dmabuf, %struct.mbochs_dmabuf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_dbg(%struct.device* %17, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %21, i32 %30, i32 %39, i32 %48, i32 %57, i32 %61, i32 %65, i32 %69, i32 %73, i32 %77, i32 %80)
  ret void
}

declare dso_local %struct.device* @mdev_dev(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
