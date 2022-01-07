; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_direct-io.c_dio_bio_end_aio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_direct-io.c_dio_bio_end_aio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.dio* }
%struct.dio = type { i64, i64, i32, %struct.TYPE_6__*, i64, i64, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@REQ_OP_WRITE = common dso_local global i64 0, align 8
@dio_aio_complete_work = common dso_local global i32 0, align 4
@DIO_COMPLETE_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @dio_bio_end_aio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dio_bio_end_aio(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.dio*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %7 = load %struct.bio*, %struct.bio** %2, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 0
  %9 = load %struct.dio*, %struct.dio** %8, align 8
  store %struct.dio* %9, %struct.dio** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.dio*, %struct.dio** %3, align 8
  %11 = load %struct.bio*, %struct.bio** %2, align 8
  %12 = call i32 @dio_bio_complete(%struct.dio* %10, %struct.bio* %11)
  %13 = load %struct.dio*, %struct.dio** %3, align 8
  %14 = getelementptr inbounds %struct.dio, %struct.dio* %13, i32 0, i32 6
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.dio*, %struct.dio** %3, align 8
  %18 = getelementptr inbounds %struct.dio, %struct.dio* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, -1
  store i64 %20, i64* %18, align 8
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %21, 1
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load %struct.dio*, %struct.dio** %3, align 8
  %25 = getelementptr inbounds %struct.dio, %struct.dio* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.dio*, %struct.dio** %3, align 8
  %30 = getelementptr inbounds %struct.dio, %struct.dio* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @wake_up_process(i64 %31)
  br label %33

33:                                               ; preds = %28, %23, %1
  %34 = load %struct.dio*, %struct.dio** %3, align 8
  %35 = getelementptr inbounds %struct.dio, %struct.dio* %34, i32 0, i32 6
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i64, i64* %4, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %93

40:                                               ; preds = %33
  %41 = load %struct.dio*, %struct.dio** %3, align 8
  %42 = getelementptr inbounds %struct.dio, %struct.dio* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %40
  %46 = load %struct.dio*, %struct.dio** %3, align 8
  %47 = getelementptr inbounds %struct.dio, %struct.dio* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %45
  %51 = load %struct.dio*, %struct.dio** %3, align 8
  %52 = getelementptr inbounds %struct.dio, %struct.dio* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @REQ_OP_WRITE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.dio*, %struct.dio** %3, align 8
  %58 = getelementptr inbounds %struct.dio, %struct.dio* %57, i32 0, i32 3
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %56, %50
  %66 = phi i1 [ false, %50 ], [ %64, %56 ]
  br label %67

67:                                               ; preds = %65, %45
  %68 = phi i1 [ true, %45 ], [ %66, %65 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %67, %40
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %70
  %74 = load %struct.dio*, %struct.dio** %3, align 8
  %75 = getelementptr inbounds %struct.dio, %struct.dio* %74, i32 0, i32 2
  %76 = load i32, i32* @dio_aio_complete_work, align 4
  %77 = call i32 @INIT_WORK(i32* %75, i32 %76)
  %78 = load %struct.dio*, %struct.dio** %3, align 8
  %79 = getelementptr inbounds %struct.dio, %struct.dio* %78, i32 0, i32 3
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.dio*, %struct.dio** %3, align 8
  %86 = getelementptr inbounds %struct.dio, %struct.dio* %85, i32 0, i32 2
  %87 = call i32 @queue_work(i32 %84, i32* %86)
  br label %92

88:                                               ; preds = %70
  %89 = load %struct.dio*, %struct.dio** %3, align 8
  %90 = load i32, i32* @DIO_COMPLETE_ASYNC, align 4
  %91 = call i32 @dio_complete(%struct.dio* %89, i32 0, i32 %90)
  br label %92

92:                                               ; preds = %88, %73
  br label %93

93:                                               ; preds = %92, %33
  ret void
}

declare dso_local i32 @dio_bio_complete(%struct.dio*, %struct.bio*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wake_up_process(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @dio_complete(%struct.dio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
