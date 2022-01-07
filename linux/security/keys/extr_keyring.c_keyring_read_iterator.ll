; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_read_iterator.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_read_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keyring_read_iterator_context = type { i64, i64, i32 }
%struct.key = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"{%s,%d},,{%zu/%zu}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @keyring_read_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyring_read_iterator(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.keyring_read_iterator_context*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.keyring_read_iterator_context*
  store %struct.keyring_read_iterator_context* %10, %struct.keyring_read_iterator_context** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call %struct.key* @keyring_ptr_to_key(i8* %11)
  store %struct.key* %12, %struct.key** %7, align 8
  %13 = load %struct.key*, %struct.key** %7, align 8
  %14 = getelementptr inbounds %struct.key, %struct.key* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.key*, %struct.key** %7, align 8
  %19 = getelementptr inbounds %struct.key, %struct.key* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.keyring_read_iterator_context*, %struct.keyring_read_iterator_context** %6, align 8
  %22 = getelementptr inbounds %struct.keyring_read_iterator_context, %struct.keyring_read_iterator_context* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.keyring_read_iterator_context*, %struct.keyring_read_iterator_context** %6, align 8
  %25 = getelementptr inbounds %struct.keyring_read_iterator_context, %struct.keyring_read_iterator_context* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @kenter(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i64 %23, i64 %26)
  %28 = load %struct.keyring_read_iterator_context*, %struct.keyring_read_iterator_context** %6, align 8
  %29 = getelementptr inbounds %struct.keyring_read_iterator_context, %struct.keyring_read_iterator_context* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.keyring_read_iterator_context*, %struct.keyring_read_iterator_context** %6, align 8
  %32 = getelementptr inbounds %struct.keyring_read_iterator_context, %struct.keyring_read_iterator_context* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %57

36:                                               ; preds = %2
  %37 = load %struct.key*, %struct.key** %7, align 8
  %38 = getelementptr inbounds %struct.key, %struct.key* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.keyring_read_iterator_context*, %struct.keyring_read_iterator_context** %6, align 8
  %41 = getelementptr inbounds %struct.keyring_read_iterator_context, %struct.keyring_read_iterator_context* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @put_user(i32 %39, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %57

48:                                               ; preds = %36
  %49 = load %struct.keyring_read_iterator_context*, %struct.keyring_read_iterator_context** %6, align 8
  %50 = getelementptr inbounds %struct.keyring_read_iterator_context, %struct.keyring_read_iterator_context* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.keyring_read_iterator_context*, %struct.keyring_read_iterator_context** %6, align 8
  %54 = getelementptr inbounds %struct.keyring_read_iterator_context, %struct.keyring_read_iterator_context* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %54, align 8
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %48, %46, %35
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.key* @keyring_ptr_to_key(i8*) #1

declare dso_local i32 @kenter(i8*, i32, i32, i64, i64) #1

declare dso_local i32 @put_user(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
