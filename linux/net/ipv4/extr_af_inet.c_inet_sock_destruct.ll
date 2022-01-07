; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_sock_destruct.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_sock_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.inet_sock = type { i32 }

@SOCK_STREAM = common dso_local global i64 0, align 8
@TCP_CLOSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Attempt to release TCP socket in state %d %p\0A\00", align 1
@SOCK_DEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Attempt to release alive inet socket %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_sock_destruct(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.inet_sock* @inet_sk(%struct.sock* %4)
  store %struct.inet_sock* %5, %struct.inet_sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 10
  %8 = call i32 @__skb_queue_purge(i32* %7)
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 9
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 9
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @__kfree_skb(i32* %16)
  %18 = load %struct.sock*, %struct.sock** %2, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 9
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 8
  %23 = call i32 @__skb_queue_purge(i32* %22)
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = call i32 @sk_mem_reclaim(%struct.sock* %24)
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SOCK_STREAM, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %20
  %32 = load %struct.sock*, %struct.sock** %2, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TCP_CLOSE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.sock*, %struct.sock** %2, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.sock*
  %42 = load %struct.sock*, %struct.sock** %2, align 8
  %43 = call i32 (i8*, %struct.sock*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.sock* %41, %struct.sock* %42)
  br label %85

44:                                               ; preds = %31, %20
  %45 = load %struct.sock*, %struct.sock** %2, align 8
  %46 = load i32, i32* @SOCK_DEAD, align 4
  %47 = call i32 @sock_flag(%struct.sock* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load %struct.sock*, %struct.sock** %2, align 8
  %51 = call i32 (i8*, %struct.sock*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.sock* %50)
  br label %85

52:                                               ; preds = %44
  %53 = load %struct.sock*, %struct.sock** %2, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 7
  %55 = call i32 @atomic_read(i32* %54)
  %56 = call i32 @WARN_ON(i32 %55)
  %57 = load %struct.sock*, %struct.sock** %2, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 6
  %59 = call i32 @refcount_read(i32* %58)
  %60 = call i32 @WARN_ON(i32 %59)
  %61 = load %struct.sock*, %struct.sock** %2, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @WARN_ON(i32 %63)
  %65 = load %struct.sock*, %struct.sock** %2, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @WARN_ON(i32 %67)
  %69 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %70 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @rcu_dereference_protected(i32 %71, i32 1)
  %73 = call i32 @kfree(i32 %72)
  %74 = load %struct.sock*, %struct.sock** %2, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @rcu_dereference_protected(i32 %76, i32 1)
  %78 = call i32 @dst_release(i32 %77)
  %79 = load %struct.sock*, %struct.sock** %2, align 8
  %80 = getelementptr inbounds %struct.sock, %struct.sock* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dst_release(i32 %81)
  %83 = load %struct.sock*, %struct.sock** %2, align 8
  %84 = call i32 @sk_refcnt_debug_dec(%struct.sock* %83)
  br label %85

85:                                               ; preds = %52, %49, %37
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @__kfree_skb(i32*) #1

declare dso_local i32 @sk_mem_reclaim(%struct.sock*) #1

declare dso_local i32 @pr_err(i8*, %struct.sock*, ...) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @dst_release(i32) #1

declare dso_local i32 @sk_refcnt_debug_dec(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
