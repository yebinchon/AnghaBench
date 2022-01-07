; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_asoc_set_secret.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_asoc_set_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_shared_key = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.sctp_auth_bytes = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_auth_bytes* (%struct.sctp_shared_key*, %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes*, i32)* @sctp_auth_asoc_set_secret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_auth_bytes* @sctp_auth_asoc_set_secret(%struct.sctp_shared_key* %0, %struct.sctp_auth_bytes* %1, %struct.sctp_auth_bytes* %2, i32 %3) #0 {
  %5 = alloca %struct.sctp_auth_bytes*, align 8
  %6 = alloca %struct.sctp_shared_key*, align 8
  %7 = alloca %struct.sctp_auth_bytes*, align 8
  %8 = alloca %struct.sctp_auth_bytes*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sctp_auth_bytes*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.sctp_shared_key* %0, %struct.sctp_shared_key** %6, align 8
  store %struct.sctp_auth_bytes* %1, %struct.sctp_auth_bytes** %7, align 8
  store %struct.sctp_auth_bytes* %2, %struct.sctp_auth_bytes** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %11, align 8
  %13 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %7, align 8
  %14 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %8, align 8
  %17 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  store i64 %19, i64* %12, align 8
  %20 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %6, align 8
  %21 = getelementptr inbounds %struct.sctp_shared_key, %struct.sctp_shared_key* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %6, align 8
  %26 = getelementptr inbounds %struct.sctp_shared_key, %struct.sctp_shared_key* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %12, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %12, align 8
  br label %32

32:                                               ; preds = %24, %4
  %33 = load i64, i64* %12, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call %struct.sctp_auth_bytes* @sctp_auth_create_key(i64 %33, i32 %34)
  store %struct.sctp_auth_bytes* %35, %struct.sctp_auth_bytes** %10, align 8
  %36 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %10, align 8
  %37 = icmp ne %struct.sctp_auth_bytes* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store %struct.sctp_auth_bytes* null, %struct.sctp_auth_bytes** %5, align 8
  br label %97

39:                                               ; preds = %32
  %40 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %6, align 8
  %41 = getelementptr inbounds %struct.sctp_shared_key, %struct.sctp_shared_key* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %44, label %66

44:                                               ; preds = %39
  %45 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %10, align 8
  %46 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %6, align 8
  %49 = getelementptr inbounds %struct.sctp_shared_key, %struct.sctp_shared_key* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %6, align 8
  %54 = getelementptr inbounds %struct.sctp_shared_key, %struct.sctp_shared_key* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @memcpy(i64 %47, i64 %52, i64 %57)
  %59 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %6, align 8
  %60 = getelementptr inbounds %struct.sctp_shared_key, %struct.sctp_shared_key* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %11, align 8
  br label %66

66:                                               ; preds = %44, %39
  %67 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %10, align 8
  %68 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = add nsw i64 %69, %70
  %72 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %7, align 8
  %73 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %7, align 8
  %76 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @memcpy(i64 %71, i64 %74, i64 %77)
  %79 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %7, align 8
  %80 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* %11, align 8
  %84 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %10, align 8
  %85 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %11, align 8
  %88 = add nsw i64 %86, %87
  %89 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %8, align 8
  %90 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %8, align 8
  %93 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @memcpy(i64 %88, i64 %91, i64 %94)
  %96 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %10, align 8
  store %struct.sctp_auth_bytes* %96, %struct.sctp_auth_bytes** %5, align 8
  br label %97

97:                                               ; preds = %66, %38
  %98 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %5, align 8
  ret %struct.sctp_auth_bytes* %98
}

declare dso_local %struct.sctp_auth_bytes* @sctp_auth_create_key(i64, i32) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
