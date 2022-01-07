; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_fastopen_init_key_once.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_fastopen_init_key_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tcp_fastopen_context = type { i32 }

@TCP_FASTOPEN_KEY_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_fastopen_init_key_once(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tcp_fastopen_context*, align 8
  %6 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %2, align 8
  %7 = load i32, i32* @TCP_FASTOPEN_KEY_LENGTH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.net*, %struct.net** %2, align 8
  %13 = getelementptr inbounds %struct.net, %struct.net* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.tcp_fastopen_context* @rcu_dereference(i32 %15)
  store %struct.tcp_fastopen_context* %16, %struct.tcp_fastopen_context** %5, align 8
  %17 = load %struct.tcp_fastopen_context*, %struct.tcp_fastopen_context** %5, align 8
  %18 = icmp ne %struct.tcp_fastopen_context* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 (...) @rcu_read_unlock()
  store i32 1, i32* %6, align 4
  br label %28

21:                                               ; preds = %1
  %22 = call i32 (...) @rcu_read_unlock()
  %23 = mul nuw i64 4, %8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @get_random_bytes(i32* %10, i32 %24)
  %26 = load %struct.net*, %struct.net** %2, align 8
  %27 = call i32 @tcp_fastopen_reset_cipher(%struct.net* %26, i32* null, i32* %10, i32* null)
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %21, %19
  %29 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %29)
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %32 [
    i32 0, label %31
    i32 1, label %31
  ]

31:                                               ; preds = %28, %28
  ret void

32:                                               ; preds = %28
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.tcp_fastopen_context* @rcu_dereference(i32) #2

declare dso_local i32 @rcu_read_unlock(...) #2

declare dso_local i32 @get_random_bytes(i32*, i32) #2

declare dso_local i32 @tcp_fastopen_reset_cipher(%struct.net*, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
