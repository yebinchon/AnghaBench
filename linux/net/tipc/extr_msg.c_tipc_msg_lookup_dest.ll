; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_lookup_dest.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_lookup_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@TIPC_ERR_NO_NAME = common dso_local global i32 0, align 4
@TIPC_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_msg_lookup_dest(%struct.net* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tipc_msg*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %12)
  store %struct.tipc_msg* %13, %struct.tipc_msg** %8, align 8
  %14 = load %struct.net*, %struct.net** %5, align 8
  %15 = call i64 @tipc_own_addr(%struct.net* %14)
  store i64 %15, i64* %11, align 8
  %16 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %17 = call i32 @msg_isdata(%struct.tipc_msg* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %82

20:                                               ; preds = %3
  %21 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %22 = call i32 @msg_named(%struct.tipc_msg* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %82

25:                                               ; preds = %20
  %26 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %27 = call i64 @msg_errcode(%struct.tipc_msg* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %82

30:                                               ; preds = %25
  %31 = load i32, i32* @TIPC_ERR_NO_NAME, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i64 @skb_linearize(%struct.sk_buff* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %82

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %38)
  store %struct.tipc_msg* %39, %struct.tipc_msg** %8, align 8
  %40 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %41 = call i64 @msg_reroute_cnt(%struct.tipc_msg* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %82

44:                                               ; preds = %37
  %45 = load %struct.net*, %struct.net** %5, align 8
  %46 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %47 = call i32 @msg_lookup_scope(%struct.tipc_msg* %46)
  %48 = call i64 @tipc_scope2node(%struct.net* %45, i32 %47)
  store i64 %48, i64* %10, align 8
  %49 = load %struct.net*, %struct.net** %5, align 8
  %50 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %51 = call i32 @msg_nametype(%struct.tipc_msg* %50)
  %52 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %53 = call i32 @msg_nameinst(%struct.tipc_msg* %52)
  %54 = call i64 @tipc_nametbl_translate(%struct.net* %49, i32 %51, i32 %53, i64* %10)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %82

58:                                               ; preds = %44
  %59 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %60 = call i32 @msg_incr_reroute_cnt(%struct.tipc_msg* %59)
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @msg_set_prevnode(%struct.tipc_msg* %65, i64 %66)
  br label %68

68:                                               ; preds = %64, %58
  %69 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @msg_set_destnode(%struct.tipc_msg* %69, i64 %70)
  %72 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @msg_set_destport(%struct.tipc_msg* %72, i64 %73)
  %75 = load i32, i32* @TIPC_OK, align 4
  %76 = load i32*, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = call i32 @skb_cloned(%struct.sk_buff* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %68
  store i32 1, i32* %4, align 4
  br label %82

81:                                               ; preds = %68
  store i32 1, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %80, %57, %43, %36, %29, %24, %19
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @tipc_own_addr(%struct.net*) #1

declare dso_local i32 @msg_isdata(%struct.tipc_msg*) #1

declare dso_local i32 @msg_named(%struct.tipc_msg*) #1

declare dso_local i64 @msg_errcode(%struct.tipc_msg*) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i64 @msg_reroute_cnt(%struct.tipc_msg*) #1

declare dso_local i64 @tipc_scope2node(%struct.net*, i32) #1

declare dso_local i32 @msg_lookup_scope(%struct.tipc_msg*) #1

declare dso_local i64 @tipc_nametbl_translate(%struct.net*, i32, i32, i64*) #1

declare dso_local i32 @msg_nametype(%struct.tipc_msg*) #1

declare dso_local i32 @msg_nameinst(%struct.tipc_msg*) #1

declare dso_local i32 @msg_incr_reroute_cnt(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_prevnode(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_destnode(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_destport(%struct.tipc_msg*, i64) #1

declare dso_local i32 @skb_cloned(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
