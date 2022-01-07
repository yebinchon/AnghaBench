; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_compare_object.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_compare_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keyring_index_key = type { i64, i64, i64, i32 }
%struct.key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @keyring_compare_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyring_compare_object(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.keyring_index_key*, align 8
  %6 = alloca %struct.key*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.keyring_index_key*
  store %struct.keyring_index_key* %8, %struct.keyring_index_key** %5, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call %struct.key* @keyring_ptr_to_key(i8* %9)
  store %struct.key* %10, %struct.key** %6, align 8
  %11 = load %struct.key*, %struct.key** %6, align 8
  %12 = getelementptr inbounds %struct.key, %struct.key* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.keyring_index_key*, %struct.keyring_index_key** %5, align 8
  %16 = getelementptr inbounds %struct.keyring_index_key, %struct.keyring_index_key* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %2
  %20 = load %struct.key*, %struct.key** %6, align 8
  %21 = getelementptr inbounds %struct.key, %struct.key* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.keyring_index_key*, %struct.keyring_index_key** %5, align 8
  %25 = getelementptr inbounds %struct.keyring_index_key, %struct.keyring_index_key* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %19
  %29 = load %struct.key*, %struct.key** %6, align 8
  %30 = getelementptr inbounds %struct.key, %struct.key* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.keyring_index_key*, %struct.keyring_index_key** %5, align 8
  %34 = getelementptr inbounds %struct.keyring_index_key, %struct.keyring_index_key* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %28
  %38 = load %struct.key*, %struct.key** %6, align 8
  %39 = getelementptr inbounds %struct.key, %struct.key* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.keyring_index_key*, %struct.keyring_index_key** %5, align 8
  %43 = getelementptr inbounds %struct.keyring_index_key, %struct.keyring_index_key* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.keyring_index_key*, %struct.keyring_index_key** %5, align 8
  %46 = getelementptr inbounds %struct.keyring_index_key, %struct.keyring_index_key* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @memcmp(i32 %41, i32 %44, i64 %47)
  %49 = icmp eq i64 %48, 0
  br label %50

50:                                               ; preds = %37, %28, %19, %2
  %51 = phi i1 [ false, %28 ], [ false, %19 ], [ false, %2 ], [ %49, %37 ]
  %52 = zext i1 %51 to i32
  ret i32 %52
}

declare dso_local %struct.key* @keyring_ptr_to_key(i8*) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
