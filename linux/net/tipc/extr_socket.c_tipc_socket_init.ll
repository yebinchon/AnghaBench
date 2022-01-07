; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_socket_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_socket_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tipc_proto = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to register TIPC protocol type\0A\00", align 1
@tipc_family_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to register TIPC socket type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_socket_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @proto_register(i32* @tipc_proto, i32 1)
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %15

7:                                                ; preds = %0
  %8 = call i32 @sock_register(i32* @tipc_family_ops)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @proto_unregister(i32* @tipc_proto)
  br label %15

14:                                               ; preds = %7
  br label %15

15:                                               ; preds = %14, %11, %5
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i32 @proto_register(i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @sock_register(i32*) #1

declare dso_local i32 @proto_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
