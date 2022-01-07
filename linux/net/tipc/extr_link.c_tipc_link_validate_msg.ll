; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_validate_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_validate_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32, i32, i32, i32 }
%struct.tipc_msg = type { i32 }

@LINK_PROTOCOL = common dso_local global i64 0, align 8
@TIPC_LINK_PROTO_SEQNO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_link_validate_msg(%struct.tipc_link* %0, %struct.tipc_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_link*, align 8
  %5 = alloca %struct.tipc_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tipc_link* %0, %struct.tipc_link** %4, align 8
  store %struct.tipc_msg* %1, %struct.tipc_msg** %5, align 8
  %9 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %10 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %13 = call i32 @msg_session(%struct.tipc_msg* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %15 = call i32 @msg_type(%struct.tipc_msg* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %17 = call i64 @msg_user(%struct.tipc_msg* %16)
  %18 = load i64, i64* @LINK_PROTOCOL, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %85

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %84 [
    i32 129, label %23
    i32 130, label %33
    i32 128, label %46
  ]

23:                                               ; preds = %21
  %24 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %25 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %85

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @more(i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %85

33:                                               ; preds = %21
  %34 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %35 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %85

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @less(i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %85

46:                                               ; preds = %21
  %47 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %48 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %85

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %85

57:                                               ; preds = %52
  %58 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %59 = call i32 @link_is_up(%struct.tipc_link* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %63 = call i32 @msg_ack(%struct.tipc_msg* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %85

66:                                               ; preds = %61, %57
  %67 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %68 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @TIPC_LINK_PROTO_SEQNO, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %85

74:                                               ; preds = %66
  %75 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %76 = call i32 @msg_seqno(%struct.tipc_msg* %75)
  %77 = load %struct.tipc_link*, %struct.tipc_link** %4, align 8
  %78 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @less(i32 %76, i32 %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %3, align 4
  br label %85

84:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %74, %73, %65, %56, %51, %39, %38, %29, %28, %20
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @msg_session(%struct.tipc_msg*) #1

declare dso_local i32 @msg_type(%struct.tipc_msg*) #1

declare dso_local i64 @msg_user(%struct.tipc_msg*) #1

declare dso_local i32 @more(i32, i32) #1

declare dso_local i32 @less(i32, i32) #1

declare dso_local i32 @link_is_up(%struct.tipc_link*) #1

declare dso_local i32 @msg_ack(%struct.tipc_msg*) #1

declare dso_local i32 @msg_seqno(%struct.tipc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
