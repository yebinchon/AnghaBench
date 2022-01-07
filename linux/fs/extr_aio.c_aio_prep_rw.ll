; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_aio.c_aio_prep_rw.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_aio.c_aio_prep_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.iocb = type { i32, i32, i32, i32 }

@aio_complete_rw = common dso_local global i32 0, align 4
@IOCB_FLAG_RESFD = common dso_local global i32 0, align 4
@IOCB_EVENTFD = common dso_local global i32 0, align 4
@IOCB_FLAG_IOPRIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"aio ioprio check cap error: %d\0A\00", align 1
@IOCB_HIPRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iocb*)* @aio_prep_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_prep_rw(%struct.kiocb* %0, %struct.iocb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iocb*, align 8
  %6 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iocb* %1, %struct.iocb** %5, align 8
  %7 = load i32, i32* @aio_complete_rw, align 4
  %8 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %9 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 8
  %10 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %11 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %10, i32 0, i32 5
  store i32* null, i32** %11, align 8
  %12 = load %struct.iocb*, %struct.iocb** %5, align 8
  %13 = getelementptr inbounds %struct.iocb, %struct.iocb* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %16 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %18 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @iocb_flags(i32 %19)
  %21 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %22 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.iocb*, %struct.iocb** %5, align 8
  %24 = getelementptr inbounds %struct.iocb, %struct.iocb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IOCB_FLAG_RESFD, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i32, i32* @IOCB_EVENTFD, align 4
  %31 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %32 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %29, %2
  %36 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %37 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @file_write_hint(i32 %38)
  %40 = call i32 @ki_hint_validate(i32 %39)
  %41 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %42 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.iocb*, %struct.iocb** %5, align 8
  %44 = getelementptr inbounds %struct.iocb, %struct.iocb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IOCB_FLAG_IOPRIO, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %35
  %50 = load %struct.iocb*, %struct.iocb** %5, align 8
  %51 = getelementptr inbounds %struct.iocb, %struct.iocb* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ioprio_check_cap(i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %88

60:                                               ; preds = %49
  %61 = load %struct.iocb*, %struct.iocb** %5, align 8
  %62 = getelementptr inbounds %struct.iocb, %struct.iocb* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %65 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %70

66:                                               ; preds = %35
  %67 = call i32 (...) @get_current_ioprio()
  %68 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %69 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %60
  %71 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %72 = load %struct.iocb*, %struct.iocb** %5, align 8
  %73 = getelementptr inbounds %struct.iocb, %struct.iocb* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @kiocb_set_rw_flags(%struct.kiocb* %71, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %88

81:                                               ; preds = %70
  %82 = load i32, i32* @IOCB_HIPRI, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %85 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %81, %79, %56
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @iocb_flags(i32) #1

declare dso_local i32 @ki_hint_validate(i32) #1

declare dso_local i32 @file_write_hint(i32) #1

declare dso_local i32 @ioprio_check_cap(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @get_current_ioprio(...) #1

declare dso_local i32 @kiocb_set_rw_flags(%struct.kiocb*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
