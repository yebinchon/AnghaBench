; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_key.c_rxrpc_get_null_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_key.c_rxrpc_get_null_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.cred = type { i32 }

@key_type_rxrpc = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@KEY_POS_SEARCH = common dso_local global i32 0, align 4
@KEY_ALLOC_NOT_IN_QUOTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key* @rxrpc_get_null_key(i8* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %7, %struct.cred** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %10 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %11 = load %struct.cred*, %struct.cred** %4, align 8
  %12 = load i32, i32* @KEY_POS_SEARCH, align 4
  %13 = load i32, i32* @KEY_ALLOC_NOT_IN_QUOTA, align 4
  %14 = call %struct.key* @key_alloc(i32* @key_type_rxrpc, i8* %8, i32 %9, i32 %10, %struct.cred* %11, i32 %12, i32 %13, i32* null)
  store %struct.key* %14, %struct.key** %5, align 8
  %15 = load %struct.key*, %struct.key** %5, align 8
  %16 = call i64 @IS_ERR(%struct.key* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load %struct.key*, %struct.key** %5, align 8
  store %struct.key* %19, %struct.key** %2, align 8
  br label %34

20:                                               ; preds = %1
  %21 = load %struct.key*, %struct.key** %5, align 8
  %22 = call i32 @key_instantiate_and_link(%struct.key* %21, i32* null, i32 0, i32* null, i32* null)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.key*, %struct.key** %5, align 8
  %27 = call i32 @key_revoke(%struct.key* %26)
  %28 = load %struct.key*, %struct.key** %5, align 8
  %29 = call i32 @key_put(%struct.key* %28)
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.key* @ERR_PTR(i32 %30)
  store %struct.key* %31, %struct.key** %2, align 8
  br label %34

32:                                               ; preds = %20
  %33 = load %struct.key*, %struct.key** %5, align 8
  store %struct.key* %33, %struct.key** %2, align 8
  br label %34

34:                                               ; preds = %32, %25, %18
  %35 = load %struct.key*, %struct.key** %2, align 8
  ret %struct.key* %35
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local %struct.key* @key_alloc(i32*, i8*, i32, i32, %struct.cred*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @key_instantiate_and_link(%struct.key*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @key_revoke(%struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local %struct.key* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
