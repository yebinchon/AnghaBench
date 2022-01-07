; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_lib.c_bt_to_errno.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_lib.c_bt_to_errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBADRQC = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EHOSTDOWN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EBADE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EMLINK = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_to_errno(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %52 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %8
    i32 3, label %10
    i32 4, label %12
    i32 60, label %12
    i32 5, label %14
    i32 6, label %16
    i32 7, label %18
    i32 8, label %20
    i32 9, label %22
    i32 10, label %24
    i32 11, label %26
    i32 12, label %28
    i32 13, label %30
    i32 14, label %30
    i32 15, label %30
    i32 16, label %32
    i32 17, label %34
    i32 39, label %34
    i32 41, label %34
    i32 32, label %34
    i32 18, label %36
    i32 19, label %38
    i32 20, label %38
    i32 21, label %38
    i32 22, label %40
    i32 23, label %42
    i32 24, label %44
    i32 26, label %46
    i32 27, label %48
    i32 25, label %50
    i32 30, label %50
    i32 35, label %50
    i32 36, label %50
    i32 37, label %50
  ]

5:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

6:                                                ; preds = %1
  %7 = load i32, i32* @EBADRQC, align 4
  store i32 %7, i32* %2, align 4
  br label %54

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOTCONN, align 4
  store i32 %9, i32* %2, align 4
  br label %54

10:                                               ; preds = %1
  %11 = load i32, i32* @EIO, align 4
  store i32 %11, i32* %2, align 4
  br label %54

12:                                               ; preds = %1, %1
  %13 = load i32, i32* @EHOSTDOWN, align 4
  store i32 %13, i32* %2, align 4
  br label %54

14:                                               ; preds = %1
  %15 = load i32, i32* @EACCES, align 4
  store i32 %15, i32* %2, align 4
  br label %54

16:                                               ; preds = %1
  %17 = load i32, i32* @EBADE, align 4
  store i32 %17, i32* %2, align 4
  br label %54

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %2, align 4
  br label %54

20:                                               ; preds = %1
  %21 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %21, i32* %2, align 4
  br label %54

22:                                               ; preds = %1
  %23 = load i32, i32* @EMLINK, align 4
  store i32 %23, i32* %2, align 4
  br label %54

24:                                               ; preds = %1
  %25 = load i32, i32* @EMLINK, align 4
  store i32 %25, i32* %2, align 4
  br label %54

26:                                               ; preds = %1
  %27 = load i32, i32* @EALREADY, align 4
  store i32 %27, i32* %2, align 4
  br label %54

28:                                               ; preds = %1
  %29 = load i32, i32* @EBUSY, align 4
  store i32 %29, i32* %2, align 4
  br label %54

30:                                               ; preds = %1, %1, %1
  %31 = load i32, i32* @ECONNREFUSED, align 4
  store i32 %31, i32* %2, align 4
  br label %54

32:                                               ; preds = %1
  %33 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %33, i32* %2, align 4
  br label %54

34:                                               ; preds = %1, %1, %1, %1
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %35, i32* %2, align 4
  br label %54

36:                                               ; preds = %1
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %2, align 4
  br label %54

38:                                               ; preds = %1, %1, %1
  %39 = load i32, i32* @ECONNRESET, align 4
  store i32 %39, i32* %2, align 4
  br label %54

40:                                               ; preds = %1
  %41 = load i32, i32* @ECONNABORTED, align 4
  store i32 %41, i32* %2, align 4
  br label %54

42:                                               ; preds = %1
  %43 = load i32, i32* @ELOOP, align 4
  store i32 %43, i32* %2, align 4
  br label %54

44:                                               ; preds = %1
  %45 = load i32, i32* @EACCES, align 4
  store i32 %45, i32* %2, align 4
  br label %54

46:                                               ; preds = %1
  %47 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %47, i32* %2, align 4
  br label %54

48:                                               ; preds = %1
  %49 = load i32, i32* @ECONNREFUSED, align 4
  store i32 %49, i32* %2, align 4
  br label %54

50:                                               ; preds = %1, %1, %1, %1, %1
  %51 = load i32, i32* @EPROTO, align 4
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %1
  %53 = load i32, i32* @ENOSYS, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %5
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
