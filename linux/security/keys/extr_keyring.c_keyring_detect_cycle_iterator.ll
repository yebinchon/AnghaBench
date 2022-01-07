; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_detect_cycle_iterator.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_detect_cycle_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keyring_search_context = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.key* }
%struct.key = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"{%d}\00", align 1
@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @keyring_detect_cycle_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyring_detect_cycle_iterator(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.keyring_search_context*, align 8
  %7 = alloca %struct.key*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.keyring_search_context*
  store %struct.keyring_search_context* %9, %struct.keyring_search_context** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call %struct.key* @keyring_ptr_to_key(i8* %10)
  store %struct.key* %11, %struct.key** %7, align 8
  %12 = load %struct.key*, %struct.key** %7, align 8
  %13 = getelementptr inbounds %struct.key, %struct.key* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kenter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.key*, %struct.key** %7, align 8
  %17 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %18 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.key*, %struct.key** %19, align 8
  %21 = icmp ne %struct.key* %16, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @EDEADLK, align 4
  %25 = sub nsw i32 0, %24
  %26 = call i32 @ERR_PTR(i32 %25)
  %27 = load %struct.keyring_search_context*, %struct.keyring_search_context** %6, align 8
  %28 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %23, %22
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.key* @keyring_ptr_to_key(i8*) #1

declare dso_local i32 @kenter(i8*, i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
