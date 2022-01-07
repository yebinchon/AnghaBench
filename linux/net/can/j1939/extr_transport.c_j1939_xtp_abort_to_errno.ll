; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_xtp_abort_to_errno.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_xtp_abort_to_errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_priv = type { i32 }

@EALREADY = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@ENOTRECOVERABLE = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown abort code %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.j1939_priv*, i32)* @j1939_xtp_abort_to_errno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @j1939_xtp_abort_to_errno(%struct.j1939_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.j1939_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.j1939_priv* %0, %struct.j1939_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %44 [
    i32 128, label %7
    i32 141, label %12
    i32 131, label %14
    i32 130, label %16
    i32 134, label %18
    i32 135, label %20
    i32 129, label %22
    i32 142, label %24
    i32 140, label %26
    i32 136, label %28
    i32 143, label %30
    i32 137, label %32
    i32 144, label %34
    i32 132, label %36
    i32 138, label %38
    i32 139, label %40
    i32 133, label %42
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 128
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON_ONCE(i32 %10)
  store i32 0, i32* %5, align 4
  br label %51

12:                                               ; preds = %2
  %13 = load i32, i32* @EALREADY, align 4
  store i32 %13, i32* %5, align 4
  br label %51

14:                                               ; preds = %2
  %15 = load i32, i32* @EMSGSIZE, align 4
  store i32 %15, i32* %5, align 4
  br label %51

16:                                               ; preds = %2
  %17 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %17, i32* %5, align 4
  br label %51

18:                                               ; preds = %2
  %19 = load i32, i32* @EBADMSG, align 4
  store i32 %19, i32* %5, align 4
  br label %51

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOTRECOVERABLE, align 4
  store i32 %21, i32* %5, align 4
  br label %51

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOTCONN, align 4
  store i32 %23, i32* %5, align 4
  br label %51

24:                                               ; preds = %2
  %25 = load i32, i32* @EILSEQ, align 4
  store i32 %25, i32* %5, align 4
  br label %51

26:                                               ; preds = %2
  %27 = load i32, i32* @EPROTO, align 4
  store i32 %27, i32* %5, align 4
  br label %51

28:                                               ; preds = %2
  %29 = load i32, i32* @EPROTO, align 4
  store i32 %29, i32* %5, align 4
  br label %51

30:                                               ; preds = %2
  %31 = load i32, i32* @EPROTO, align 4
  store i32 %31, i32* %5, align 4
  br label %51

32:                                               ; preds = %2
  %33 = load i32, i32* @EPROTO, align 4
  store i32 %33, i32* %5, align 4
  br label %51

34:                                               ; preds = %2
  %35 = load i32, i32* @EPROTO, align 4
  store i32 %35, i32* %5, align 4
  br label %51

36:                                               ; preds = %2
  %37 = load i32, i32* @EPROTO, align 4
  store i32 %37, i32* %5, align 4
  br label %51

38:                                               ; preds = %2
  %39 = load i32, i32* @EPROTO, align 4
  store i32 %39, i32* %5, align 4
  br label %51

40:                                               ; preds = %2
  %41 = load i32, i32* @EPROTO, align 4
  store i32 %41, i32* %5, align 4
  br label %51

42:                                               ; preds = %2
  %43 = load i32, i32* @EPROTO, align 4
  store i32 %43, i32* %5, align 4
  br label %51

44:                                               ; preds = %2
  %45 = load %struct.j1939_priv*, %struct.j1939_priv** %3, align 8
  %46 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @netdev_warn(i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EPROTO, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %7
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
