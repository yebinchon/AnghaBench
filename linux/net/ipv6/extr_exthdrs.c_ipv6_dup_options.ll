; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_ipv6_dup_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_ipv6_dup_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ipv6_txoptions = type { i32, i64, i64, i64, i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipv6_txoptions* @ipv6_dup_options(%struct.sock* %0, %struct.ipv6_txoptions* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.ipv6_txoptions*, align 8
  %5 = alloca %struct.ipv6_txoptions*, align 8
  %6 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.ipv6_txoptions* %1, %struct.ipv6_txoptions** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %9 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.ipv6_txoptions* @sock_kmalloc(%struct.sock* %7, i32 %10, i32 %11)
  store %struct.ipv6_txoptions* %12, %struct.ipv6_txoptions** %5, align 8
  %13 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %14 = icmp ne %struct.ipv6_txoptions* %13, null
  br i1 %14, label %15, label %80

15:                                               ; preds = %2
  %16 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %17 = bitcast %struct.ipv6_txoptions* %16 to i8*
  %18 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %19 = bitcast %struct.ipv6_txoptions* %18 to i8*
  %20 = ptrtoint i8* %17 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  store i64 %22, i64* %6, align 8
  %23 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %24 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %25 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %4, align 8
  %26 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @memcpy(%struct.ipv6_txoptions* %23, %struct.ipv6_txoptions* %24, i32 %27)
  %29 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %30 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %15
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %36 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %35, i32 0, i32 4
  %37 = bitcast i64* %36 to i8**
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 %34
  store i8* %39, i8** %37, align 8
  br label %40

40:                                               ; preds = %33, %15
  %41 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %42 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %48 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %47, i32 0, i32 3
  %49 = bitcast i64* %48 to i8**
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 %46
  store i8* %51, i8** %49, align 8
  br label %52

52:                                               ; preds = %45, %40
  %53 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %54 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %60 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %59, i32 0, i32 2
  %61 = bitcast i64* %60 to i8**
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 %58
  store i8* %63, i8** %61, align 8
  br label %64

64:                                               ; preds = %57, %52
  %65 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %66 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %72 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %71, i32 0, i32 1
  %73 = bitcast i64* %72 to i8**
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 %70
  store i8* %75, i8** %73, align 8
  br label %76

76:                                               ; preds = %69, %64
  %77 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  %78 = getelementptr inbounds %struct.ipv6_txoptions, %struct.ipv6_txoptions* %77, i32 0, i32 0
  %79 = call i32 @refcount_set(i32* %78, i32 1)
  br label %80

80:                                               ; preds = %76, %2
  %81 = load %struct.ipv6_txoptions*, %struct.ipv6_txoptions** %5, align 8
  ret %struct.ipv6_txoptions* %81
}

declare dso_local %struct.ipv6_txoptions* @sock_kmalloc(%struct.sock*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.ipv6_txoptions*, %struct.ipv6_txoptions*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
