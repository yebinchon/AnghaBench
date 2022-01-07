; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_search_keyring.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_search_keyring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.keyring_search_context = type { i32 (i8*, %struct.keyring_search_context*)*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@KEYRING_SEARCH_LOOKUP_DIRECT = common dso_local global i64 0, align 8
@keyring_assoc_array_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, %struct.keyring_search_context*)* @search_keyring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_keyring(%struct.key* %0, %struct.keyring_search_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.key*, align 8
  %5 = alloca %struct.keyring_search_context*, align 8
  %6 = alloca i8*, align 8
  store %struct.key* %0, %struct.key** %4, align 8
  store %struct.keyring_search_context* %1, %struct.keyring_search_context** %5, align 8
  %7 = load %struct.keyring_search_context*, %struct.keyring_search_context** %5, align 8
  %8 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @KEYRING_SEARCH_LOOKUP_DIRECT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load %struct.key*, %struct.key** %4, align 8
  %15 = getelementptr inbounds %struct.key, %struct.key* %14, i32 0, i32 0
  %16 = load %struct.keyring_search_context*, %struct.keyring_search_context** %5, align 8
  %17 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %16, i32 0, i32 1
  %18 = call i8* @assoc_array_find(i32* %15, i32* @keyring_assoc_array_ops, i32* %17)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load %struct.keyring_search_context*, %struct.keyring_search_context** %5, align 8
  %23 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %22, i32 0, i32 0
  %24 = load i32 (i8*, %struct.keyring_search_context*)*, i32 (i8*, %struct.keyring_search_context*)** %23, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.keyring_search_context*, %struct.keyring_search_context** %5, align 8
  %27 = call i32 %24(i8* %25, %struct.keyring_search_context* %26)
  br label %29

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28, %21
  %30 = phi i32 [ %27, %21 ], [ 0, %28 ]
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %2
  %32 = load %struct.key*, %struct.key** %4, align 8
  %33 = getelementptr inbounds %struct.key, %struct.key* %32, i32 0, i32 0
  %34 = load %struct.keyring_search_context*, %struct.keyring_search_context** %5, align 8
  %35 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %34, i32 0, i32 0
  %36 = load i32 (i8*, %struct.keyring_search_context*)*, i32 (i8*, %struct.keyring_search_context*)** %35, align 8
  %37 = load %struct.keyring_search_context*, %struct.keyring_search_context** %5, align 8
  %38 = call i32 @assoc_array_iterate(i32* %33, i32 (i8*, %struct.keyring_search_context*)* %36, %struct.keyring_search_context* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %31, %29
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i8* @assoc_array_find(i32*, i32*, i32*) #1

declare dso_local i32 @assoc_array_iterate(i32*, i32 (i8*, %struct.keyring_search_context*)*, %struct.keyring_search_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
