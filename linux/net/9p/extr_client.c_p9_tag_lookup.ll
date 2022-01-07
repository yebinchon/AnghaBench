; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_tag_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_tag_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_req_t = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.p9_client = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.p9_req_t* @p9_tag_lookup(%struct.p9_client* %0, i64 %1) #0 {
  %3 = alloca %struct.p9_client*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.p9_req_t*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i32 (...) @rcu_read_lock()
  br label %7

7:                                                ; preds = %26, %18, %2
  %8 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %9 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call %struct.p9_req_t* @idr_find(i32* %9, i64 %10)
  store %struct.p9_req_t* %11, %struct.p9_req_t** %5, align 8
  %12 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %13 = icmp ne %struct.p9_req_t* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %7
  %15 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %16 = call i32 @p9_req_try_get(%struct.p9_req_t* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %7

19:                                               ; preds = %14
  %20 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %21 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %28 = call i32 @p9_req_put(%struct.p9_req_t* %27)
  br label %7

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %7
  %31 = call i32 (...) @rcu_read_unlock()
  %32 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  ret %struct.p9_req_t* %32
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.p9_req_t* @idr_find(i32*, i64) #1

declare dso_local i32 @p9_req_try_get(%struct.p9_req_t*) #1

declare dso_local i32 @p9_req_put(%struct.p9_req_t*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
