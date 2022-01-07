; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_main.c_create_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_main.c_create_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_context = type { i32, i32 }
%struct.sock = type { i32 }
%struct.inet_connection_sock = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tls_context* (%struct.sock*)* @create_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tls_context* @create_ctx(%struct.sock* %0) #0 {
  %2 = alloca %struct.tls_context*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.inet_connection_sock*, align 8
  %5 = alloca %struct.tls_context*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %6)
  store %struct.inet_connection_sock* %7, %struct.inet_connection_sock** %4, align 8
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.tls_context* @kzalloc(i32 8, i32 %8)
  store %struct.tls_context* %9, %struct.tls_context** %5, align 8
  %10 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %11 = icmp ne %struct.tls_context* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.tls_context* null, %struct.tls_context** %2, align 8
  br label %28

13:                                               ; preds = %1
  %14 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %15 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %14, i32 0, i32 1
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %18 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %21 = call i32 @rcu_assign_pointer(i32 %19, %struct.tls_context* %20)
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %26 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  store %struct.tls_context* %27, %struct.tls_context** %2, align 8
  br label %28

28:                                               ; preds = %13, %12
  %29 = load %struct.tls_context*, %struct.tls_context** %2, align 8
  ret %struct.tls_context* %29
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tls_context* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.tls_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
