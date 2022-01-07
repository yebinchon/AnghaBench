; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_list_flavors.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_list_flavors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_authops = type { i32 (i64*, i32)*, i64 }

@RPC_AUTH_MAXFLAVOR = common dso_local global i64 0, align 8
@auth_flavors = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcauth_list_flavors(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_authops*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %10, align 4
  %11 = call i32 (...) @rcu_read_lock()
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %84, %2
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @RPC_AUTH_MAXFLAVOR, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %87

16:                                               ; preds = %12
  %17 = load i32*, i32** @auth_flavors, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.rpc_authops* @rcu_dereference(i32 %20)
  store %struct.rpc_authops* %21, %struct.rpc_authops** %5, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  br label %87

28:                                               ; preds = %16
  %29 = load %struct.rpc_authops*, %struct.rpc_authops** %5, align 8
  %30 = icmp eq %struct.rpc_authops* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %84

32:                                               ; preds = %28
  %33 = load %struct.rpc_authops*, %struct.rpc_authops** %5, align 8
  %34 = getelementptr inbounds %struct.rpc_authops, %struct.rpc_authops* %33, i32 0, i32 0
  %35 = load i32 (i64*, i32)*, i32 (i64*, i32)** %34, align 8
  %36 = icmp eq i32 (i64*, i32)* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.rpc_authops*, %struct.rpc_authops** %5, align 8
  %39 = getelementptr inbounds %struct.rpc_authops, %struct.rpc_authops* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %3, align 8
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  store i64 %40, i64* %45, align 8
  br label %84

46:                                               ; preds = %32
  %47 = load %struct.rpc_authops*, %struct.rpc_authops** %5, align 8
  %48 = getelementptr inbounds %struct.rpc_authops, %struct.rpc_authops* %47, i32 0, i32 0
  %49 = load i32 (i64*, i32)*, i32 (i64*, i32)** %48, align 8
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %51 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %52 = call i32 @ARRAY_SIZE(i64* %51)
  %53 = call i32 %49(i64* %50, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %10, align 4
  br label %87

58:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %80, %58
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %10, align 4
  br label %83

70:                                               ; preds = %63
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %3, align 8
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  store i64 %74, i64* %79, align 8
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %59

83:                                               ; preds = %67, %59
  br label %84

84:                                               ; preds = %83, %37, %31
  %85 = load i64, i64* %6, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %6, align 8
  br label %12

87:                                               ; preds = %56, %25, %12
  %88 = call i32 (...) @rcu_read_unlock()
  %89 = load i32, i32* %10, align 4
  ret i32 %89
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rpc_authops* @rcu_dereference(i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
