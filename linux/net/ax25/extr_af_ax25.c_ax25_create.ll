; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_af_ax25.c_ax25_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_af_ax25.c_ax25_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i32, i32* }
%struct.sock = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.sock* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }

@SK_PROTOCOL_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@AX25_P_TEXT = common dso_local global i32 0, align 4
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@CAP_NET_RAW = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ax25_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ax25_free_sock = common dso_local global i32 0, align 4
@ax25_proto_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @ax25_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax25_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @SK_PROTOCOL_MAX, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %98

21:                                               ; preds = %14
  %22 = load %struct.net*, %struct.net** %6, align 8
  %23 = call i32 @net_eq(%struct.net* %22, i32* @init_net)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @EAFNOSUPPORT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %98

28:                                               ; preds = %21
  %29 = load %struct.socket*, %struct.socket** %7, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %58 [
    i32 130, label %32
    i32 128, label %41
    i32 129, label %50
  ]

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 131
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %32
  %39 = load i32, i32* @AX25_P_TEXT, align 4
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %38, %35
  br label %61

41:                                               ; preds = %28
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %48 [
    i32 0, label %43
    i32 131, label %43
    i32 132, label %45
  ]

43:                                               ; preds = %41, %41
  %44 = load i32, i32* @AX25_P_TEXT, align 4
  store i32 %44, i32* %8, align 4
  br label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %98

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %43
  br label %61

50:                                               ; preds = %28
  %51 = load i32, i32* @CAP_NET_RAW, align 4
  %52 = call i32 @capable(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @EPERM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %98

57:                                               ; preds = %50
  br label %61

58:                                               ; preds = %28
  %59 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %98

61:                                               ; preds = %57, %49, %40
  %62 = load %struct.net*, %struct.net** %6, align 8
  %63 = load i32, i32* @GFP_ATOMIC, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call %struct.sock* @sk_alloc(%struct.net* %62, i32 131, i32 %63, i32* @ax25_proto, i32 %64)
  store %struct.sock* %65, %struct.sock** %10, align 8
  %66 = load %struct.sock*, %struct.sock** %10, align 8
  %67 = icmp eq %struct.sock* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %98

71:                                               ; preds = %61
  %72 = call %struct.TYPE_4__* (...) @ax25_create_cb()
  %73 = load %struct.sock*, %struct.sock** %10, align 8
  %74 = call %struct.TYPE_5__* @ax25_sk(%struct.sock* %73)
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %75, align 8
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %11, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %77 = icmp ne %struct.TYPE_4__* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %71
  %79 = load %struct.sock*, %struct.sock** %10, align 8
  %80 = call i32 @sk_free(%struct.sock* %79)
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %98

83:                                               ; preds = %71
  %84 = load %struct.socket*, %struct.socket** %7, align 8
  %85 = load %struct.sock*, %struct.sock** %10, align 8
  %86 = call i32 @sock_init_data(%struct.socket* %84, %struct.sock* %85)
  %87 = load i32, i32* @ax25_free_sock, align 4
  %88 = load %struct.sock*, %struct.sock** %10, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.socket*, %struct.socket** %7, align 8
  %91 = getelementptr inbounds %struct.socket, %struct.socket* %90, i32 0, i32 1
  store i32* @ax25_proto_ops, i32** %91, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.sock*, %struct.sock** %10, align 8
  %94 = getelementptr inbounds %struct.sock, %struct.sock* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.sock*, %struct.sock** %10, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store %struct.sock* %95, %struct.sock** %97, align 8
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %83, %78, %68, %58, %54, %45, %25, %18
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @net_eq(%struct.net*, i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @ax25_create_cb(...) #1

declare dso_local %struct.TYPE_5__* @ax25_sk(%struct.sock*) #1

declare dso_local i32 @sk_free(%struct.sock*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
