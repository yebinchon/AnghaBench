; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_release_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_release_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_upcall_msg = type { i32, %struct.TYPE_2__*, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { %struct.net* }
%struct.net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gss_upcall_msg*)* @gss_release_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gss_release_msg(%struct.gss_upcall_msg* %0) #0 {
  %2 = alloca %struct.gss_upcall_msg*, align 8
  %3 = alloca %struct.net*, align 8
  store %struct.gss_upcall_msg* %0, %struct.gss_upcall_msg** %2, align 8
  %4 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %5 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.net*, %struct.net** %7, align 8
  store %struct.net* %8, %struct.net** %3, align 8
  %9 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %10 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %9, i32 0, i32 5
  %11 = call i32 @refcount_dec_and_test(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.net*, %struct.net** %3, align 8
  %16 = call i32 @put_pipe_version(%struct.net* %15)
  %17 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %18 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %17, i32 0, i32 4
  %19 = call i32 @list_empty(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %25 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %14
  %29 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %30 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @gss_put_ctx(i32* %31)
  br label %33

33:                                               ; preds = %28, %14
  %34 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %35 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %34, i32 0, i32 2
  %36 = call i32 @rpc_destroy_wait_queue(i32* %35)
  %37 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %38 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i32 @gss_put_auth(%struct.TYPE_2__* %39)
  %41 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %42 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @kfree_const(i32 %43)
  %45 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %46 = call i32 @kfree(%struct.gss_upcall_msg* %45)
  br label %47

47:                                               ; preds = %33, %13
  ret void
}

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @put_pipe_version(%struct.net*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @gss_put_ctx(i32*) #1

declare dso_local i32 @rpc_destroy_wait_queue(i32*) #1

declare dso_local i32 @gss_put_auth(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree_const(i32) #1

declare dso_local i32 @kfree(%struct.gss_upcall_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
