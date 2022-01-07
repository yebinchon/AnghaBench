; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_key.c_rxrpc_free_token_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_key.c_rxrpc_free_token_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_key_token = type { i32, i32, %struct.rxrpc_key_token*, %struct.rxrpc_key_token* }

@.str = private unnamed_addr constant [36 x i8] c"Unknown token type %x on rxrpc key\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_key_token*)* @rxrpc_free_token_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_free_token_list(%struct.rxrpc_key_token* %0) #0 {
  %2 = alloca %struct.rxrpc_key_token*, align 8
  %3 = alloca %struct.rxrpc_key_token*, align 8
  store %struct.rxrpc_key_token* %0, %struct.rxrpc_key_token** %2, align 8
  br label %4

4:                                                ; preds = %39, %1
  %5 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %2, align 8
  %6 = icmp ne %struct.rxrpc_key_token* %5, null
  br i1 %6, label %7, label %41

7:                                                ; preds = %4
  %8 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %2, align 8
  %9 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %8, i32 0, i32 3
  %10 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %9, align 8
  store %struct.rxrpc_key_token* %10, %struct.rxrpc_key_token** %3, align 8
  %11 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %2, align 8
  %12 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %30 [
    i32 128, label %14
    i32 129, label %19
  ]

14:                                               ; preds = %7
  %15 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %2, align 8
  %16 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %15, i32 0, i32 2
  %17 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %16, align 8
  %18 = call i32 @kfree(%struct.rxrpc_key_token* %17)
  br label %36

19:                                               ; preds = %7
  %20 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %2, align 8
  %21 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %2, align 8
  %26 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rxrpc_rxk5_free(i32 %27)
  br label %29

29:                                               ; preds = %24, %19
  br label %36

30:                                               ; preds = %7
  %31 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %2, align 8
  %32 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = call i32 (...) @BUG()
  br label %36

36:                                               ; preds = %30, %29, %14
  %37 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %2, align 8
  %38 = call i32 @kfree(%struct.rxrpc_key_token* %37)
  br label %39

39:                                               ; preds = %36
  %40 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %3, align 8
  store %struct.rxrpc_key_token* %40, %struct.rxrpc_key_token** %2, align 8
  br label %4

41:                                               ; preds = %4
  ret void
}

declare dso_local i32 @kfree(%struct.rxrpc_key_token*) #1

declare dso_local i32 @rxrpc_rxk5_free(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
