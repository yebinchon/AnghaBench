; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_put_rpccred.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_put_rpccred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cred = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.rpc_cred*)* }

@RPCAUTH_CRED_HASHED = common dso_local global i32 0, align 4
@RPCAUTH_CRED_UPTODATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_rpccred(%struct.rpc_cred* %0) #0 {
  %2 = alloca %struct.rpc_cred*, align 8
  store %struct.rpc_cred* %0, %struct.rpc_cred** %2, align 8
  %3 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %4 = icmp eq %struct.rpc_cred* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %76

6:                                                ; preds = %1
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %9 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %8, i32 0, i32 1
  %10 = call i64 @refcount_dec_and_test(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %67

13:                                               ; preds = %6
  %14 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %15 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %14, i32 0, i32 1
  %16 = call i32 @refcount_read(i32* %15)
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @RPCAUTH_CRED_HASHED, align 4
  %20 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %21 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %20, i32 0, i32 2
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18, %13
  br label %65

25:                                               ; preds = %18
  %26 = load i32, i32* @RPCAUTH_CRED_UPTODATE, align 4
  %27 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %28 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %27, i32 0, i32 2
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load i32, i32* @jiffies, align 4
  %33 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %34 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %36 = call i32 @rpcauth_lru_add(%struct.rpc_cred* %35)
  %37 = load i32, i32* @RPCAUTH_CRED_HASHED, align 4
  %38 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %39 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %38, i32 0, i32 2
  %40 = call i64 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %31
  %47 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %48 = call i32 @rpcauth_lru_remove(%struct.rpc_cred* %47)
  br label %49

49:                                               ; preds = %46, %31
  br label %64

50:                                               ; preds = %25
  %51 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %52 = call i64 @rpcauth_unhash_cred(%struct.rpc_cred* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %56 = call i32 @rpcauth_lru_remove(%struct.rpc_cred* %55)
  %57 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %58 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %57, i32 0, i32 1
  %59 = call i64 @refcount_dec_and_test(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %67

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %50
  br label %64

64:                                               ; preds = %63, %49
  br label %65

65:                                               ; preds = %64, %24
  %66 = call i32 (...) @rcu_read_unlock()
  br label %76

67:                                               ; preds = %61, %12
  %68 = call i32 (...) @rcu_read_unlock()
  %69 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %70 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32 (%struct.rpc_cred*)*, i32 (%struct.rpc_cred*)** %72, align 8
  %74 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %75 = call i32 %73(%struct.rpc_cred* %74)
  br label %76

76:                                               ; preds = %67, %65, %5
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rpcauth_lru_add(%struct.rpc_cred*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rpcauth_lru_remove(%struct.rpc_cred*) #1

declare dso_local i64 @rpcauth_unhash_cred(%struct.rpc_cred*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
