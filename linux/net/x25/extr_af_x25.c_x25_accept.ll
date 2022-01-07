; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c_x25_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c_x25_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.sock* }
%struct.sock = type { i64, i64, i32, i32, i32 }
%struct.sk_buff = type { %struct.sock* }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@TCP_LISTEN = common dso_local global i64 0, align 8
@SS_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32, i32)* @x25_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_accept(%struct.socket* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 1
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %9, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %12, align 4
  %18 = load %struct.sock*, %struct.sock** %9, align 8
  %19 = icmp ne %struct.sock* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %82

21:                                               ; preds = %4
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %12, align 4
  %24 = load %struct.sock*, %struct.sock** %9, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SOCK_SEQPACKET, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %82

30:                                               ; preds = %21
  %31 = load %struct.sock*, %struct.sock** %9, align 8
  %32 = call i32 @lock_sock(%struct.sock* %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  %35 = load %struct.sock*, %struct.sock** %9, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TCP_LISTEN, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %79

41:                                               ; preds = %30
  %42 = load %struct.sock*, %struct.sock** %9, align 8
  %43 = load %struct.sock*, %struct.sock** %9, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @x25_wait_for_data(%struct.sock* %42, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %79

50:                                               ; preds = %41
  %51 = load %struct.sock*, %struct.sock** %9, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 3
  %53 = call %struct.sk_buff* @skb_dequeue(i32* %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %11, align 8
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %12, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load %struct.sock*, %struct.sock** %57, align 8
  %59 = icmp ne %struct.sock* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  br label %79

61:                                               ; preds = %50
  %62 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load %struct.sock*, %struct.sock** %63, align 8
  store %struct.sock* %64, %struct.sock** %10, align 8
  %65 = load %struct.sock*, %struct.sock** %10, align 8
  %66 = load %struct.socket*, %struct.socket** %6, align 8
  %67 = call i32 @sock_graft(%struct.sock* %65, %struct.socket* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %69, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %71 = call i32 @kfree_skb(%struct.sk_buff* %70)
  %72 = load %struct.sock*, %struct.sock** %9, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* @SS_CONNECTED, align 4
  %77 = load %struct.socket*, %struct.socket** %6, align 8
  %78 = getelementptr inbounds %struct.socket, %struct.socket* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %61, %60, %49, %40
  %80 = load %struct.sock*, %struct.sock** %9, align 8
  %81 = call i32 @release_sock(%struct.sock* %80)
  br label %82

82:                                               ; preds = %79, %29, %20
  %83 = load i32, i32* %12, align 4
  ret i32 %83
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @x25_wait_for_data(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @sock_graft(%struct.sock*, %struct.socket*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
