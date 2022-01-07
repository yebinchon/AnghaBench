; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_af_netrom.c_nr_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_af_netrom.c_nr_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i64, i32 }
%struct.sk_buff = type { %struct.sock* }

@wait = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32, i32)* @nr_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nr_accept(%struct.socket* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.sock*, align 8
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @wait, align 4
  %15 = call i32 @DEFINE_WAIT(i32 %14)
  store i32 0, i32* %13, align 4
  %16 = load %struct.socket*, %struct.socket** %6, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %12, align 8
  %19 = icmp eq %struct.sock* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %98

23:                                               ; preds = %4
  %24 = load %struct.sock*, %struct.sock** %12, align 8
  %25 = call i32 @lock_sock(%struct.sock* %24)
  %26 = load %struct.sock*, %struct.sock** %12, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SOCK_SEQPACKET, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %13, align 4
  br label %94

34:                                               ; preds = %23
  %35 = load %struct.sock*, %struct.sock** %12, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TCP_LISTEN, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %13, align 4
  br label %94

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %67, %43
  %45 = load %struct.sock*, %struct.sock** %12, align 8
  %46 = call i32 @sk_sleep(%struct.sock* %45)
  %47 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %48 = call i32 @prepare_to_wait(i32 %46, i32* @wait, i32 %47)
  %49 = load %struct.sock*, %struct.sock** %12, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 2
  %51 = call %struct.sk_buff* @skb_dequeue(i32* %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %10, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %76

55:                                               ; preds = %44
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @O_NONBLOCK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EWOULDBLOCK, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %13, align 4
  br label %76

63:                                               ; preds = %55
  %64 = load i32, i32* @current, align 4
  %65 = call i32 @signal_pending(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = load %struct.sock*, %struct.sock** %12, align 8
  %69 = call i32 @release_sock(%struct.sock* %68)
  %70 = call i32 (...) @schedule()
  %71 = load %struct.sock*, %struct.sock** %12, align 8
  %72 = call i32 @lock_sock(%struct.sock* %71)
  br label %44

73:                                               ; preds = %63
  %74 = load i32, i32* @ERESTARTSYS, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %73, %60, %54
  %77 = load %struct.sock*, %struct.sock** %12, align 8
  %78 = call i32 @sk_sleep(%struct.sock* %77)
  %79 = call i32 @finish_wait(i32 %78, i32* @wait)
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %94

83:                                               ; preds = %76
  %84 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load %struct.sock*, %struct.sock** %85, align 8
  store %struct.sock* %86, %struct.sock** %11, align 8
  %87 = load %struct.sock*, %struct.sock** %11, align 8
  %88 = load %struct.socket*, %struct.socket** %7, align 8
  %89 = call i32 @sock_graft(%struct.sock* %87, %struct.socket* %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %91 = call i32 @kfree_skb(%struct.sk_buff* %90)
  %92 = load %struct.sock*, %struct.sock** %12, align 8
  %93 = call i32 @sk_acceptq_removed(%struct.sock* %92)
  br label %94

94:                                               ; preds = %83, %82, %40, %31
  %95 = load %struct.sock*, %struct.sock** %12, align 8
  %96 = call i32 @release_sock(%struct.sock* %95)
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %20
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @sock_graft(%struct.sock*, %struct.socket*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @sk_acceptq_removed(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
