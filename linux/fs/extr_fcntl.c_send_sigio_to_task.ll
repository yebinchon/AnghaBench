; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fcntl.c_send_sigio_to_task.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fcntl.c_send_sigio_to_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i32, i32 }
%struct.task_struct = type { i32 }
%struct.fown_struct = type { i32 }

@SIGPOLL = common dso_local global i32 0, align 4
@SI_SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@NSIGPOLL = common dso_local global i32 0, align 4
@band_table = common dso_local global i32* null, align 8
@SIGIO = common dso_local global i32 0, align 4
@SEND_SIG_PRIV = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.fown_struct*, i32, i32, i32)* @send_sigio_to_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_sigio_to_task(%struct.task_struct* %0, %struct.fown_struct* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.fown_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__, align 8
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store %struct.fown_struct* %1, %struct.fown_struct** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.fown_struct*, %struct.fown_struct** %7, align 8
  %14 = getelementptr inbounds %struct.fown_struct, %struct.fown_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @READ_ONCE(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %18 = load %struct.fown_struct*, %struct.fown_struct** %7, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @sigio_perm(%struct.task_struct* %17, %struct.fown_struct* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  br label %89

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  switch i32 %24, label %25 [
    i32 0, label %83
  ]

25:                                               ; preds = %23
  %26 = call i32 @clear_siginfo(%struct.TYPE_5__* %12)
  %27 = load i32, i32* %11, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @SIGPOLL, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @sig_specific_sicodes(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @SI_SIGIO, align 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %35, %25
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @POLL_IN, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @POLL_IN, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load i32, i32* @NSIGPOLL, align 4
  %51 = icmp sge i32 %49, %50
  br label %52

52:                                               ; preds = %46, %42
  %53 = phi i1 [ true, %42 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @POLL_IN, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* @NSIGPOLL, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i64 -1, i64* %62, align 8
  br label %73

63:                                               ; preds = %52
  %64 = load i32*, i32** @band_table, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @POLL_IN, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @mangle_poll(i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %63, %61
  %74 = load i32, i32* %8, align 4
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store i32 %74, i32* %75, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @do_send_sig_info(i32 %76, %struct.TYPE_5__* %12, %struct.task_struct* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  br label %89

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %23, %82
  %84 = load i32, i32* @SIGIO, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SEND_SIG_PRIV, align 8
  %86 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @do_send_sig_info(i32 %84, %struct.TYPE_5__* %85, %struct.task_struct* %86, i32 %87)
  br label %89

89:                                               ; preds = %22, %83, %81
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @sigio_perm(%struct.task_struct*, %struct.fown_struct*, i32) #1

declare dso_local i32 @clear_siginfo(%struct.TYPE_5__*) #1

declare dso_local i32 @sig_specific_sicodes(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @mangle_poll(i32) #1

declare dso_local i32 @do_send_sig_info(i32, %struct.TYPE_5__*, %struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
