; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_statsize.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_statsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_wstat = type { i64, i64, i64, i64, i64 }

@p9_proto_2000u = common dso_local global i32 0, align 4
@p9_proto_2000L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_wstat*, i32)* @p9_client_statsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_client_statsize(%struct.p9_wstat* %0, i32 %1) #0 {
  %3 = alloca %struct.p9_wstat*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.p9_wstat* %0, %struct.p9_wstat** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 47, i32* %5, align 4
  %6 = load %struct.p9_wstat*, %struct.p9_wstat** %3, align 8
  %7 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.p9_wstat*, %struct.p9_wstat** %3, align 8
  %12 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @strlen(i64 %13)
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %10, %2
  %20 = load %struct.p9_wstat*, %struct.p9_wstat** %3, align 8
  %21 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.p9_wstat*, %struct.p9_wstat** %3, align 8
  %26 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @strlen(i64 %27)
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %24, %19
  %34 = load %struct.p9_wstat*, %struct.p9_wstat** %3, align 8
  %35 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.p9_wstat*, %struct.p9_wstat** %3, align 8
  %40 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @strlen(i64 %41)
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %38, %33
  %48 = load %struct.p9_wstat*, %struct.p9_wstat** %3, align 8
  %49 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.p9_wstat*, %struct.p9_wstat** %3, align 8
  %54 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @strlen(i64 %55)
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %52, %47
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @p9_proto_2000u, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @p9_proto_2000L, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 14
  store i32 %71, i32* %5, align 4
  %72 = load %struct.p9_wstat*, %struct.p9_wstat** %3, align 8
  %73 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %69
  %77 = load %struct.p9_wstat*, %struct.p9_wstat** %3, align 8
  %78 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @strlen(i64 %79)
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %76, %69
  br label %86

86:                                               ; preds = %85, %65
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i64 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
