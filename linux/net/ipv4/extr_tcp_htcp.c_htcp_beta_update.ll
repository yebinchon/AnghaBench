; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_htcp.c_htcp_beta_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_htcp.c_htcp_beta_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htcp = type { i32, i32, i32, i32 }

@use_bandwidth_switch = common dso_local global i64 0, align 8
@BETA_MIN = common dso_local global i8* null, align 8
@BETA_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htcp*, i32, i32)* @htcp_beta_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htcp_beta_update(%struct.htcp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.htcp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.htcp* %0, %struct.htcp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @use_bandwidth_switch, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %3
  %12 = load %struct.htcp*, %struct.htcp** %4, align 8
  %13 = getelementptr inbounds %struct.htcp, %struct.htcp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.htcp*, %struct.htcp** %4, align 8
  %16 = getelementptr inbounds %struct.htcp, %struct.htcp* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.htcp*, %struct.htcp** %4, align 8
  %19 = getelementptr inbounds %struct.htcp, %struct.htcp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.htcp*, %struct.htcp** %4, align 8
  %22 = getelementptr inbounds %struct.htcp, %struct.htcp* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 5, %23
  %25 = load i32, i32* %8, align 4
  %26 = mul nsw i32 4, %25
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 6, %27
  %29 = call i32 @between(i32 %24, i32 %26, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %11
  %32 = load i8*, i8** @BETA_MIN, align 8
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.htcp*, %struct.htcp** %4, align 8
  %35 = getelementptr inbounds %struct.htcp, %struct.htcp* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.htcp*, %struct.htcp** %4, align 8
  %37 = getelementptr inbounds %struct.htcp, %struct.htcp* %36, i32 0, i32 3
  store i32 0, i32* %37, align 4
  br label %92

38:                                               ; preds = %11
  br label %39

39:                                               ; preds = %38, %3
  %40 = load %struct.htcp*, %struct.htcp** %4, align 8
  %41 = getelementptr inbounds %struct.htcp, %struct.htcp* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %85

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @msecs_to_jiffies(i32 10)
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %85

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %85

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = shl i32 %52, 7
  %54 = load i32, i32* %6, align 4
  %55 = sdiv i32 %53, %54
  %56 = load %struct.htcp*, %struct.htcp** %4, align 8
  %57 = getelementptr inbounds %struct.htcp, %struct.htcp* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.htcp*, %struct.htcp** %4, align 8
  %59 = getelementptr inbounds %struct.htcp, %struct.htcp* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = load i8*, i8** @BETA_MIN, align 8
  %64 = icmp ult i8* %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %51
  %66 = load i8*, i8** @BETA_MIN, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.htcp*, %struct.htcp** %4, align 8
  %69 = getelementptr inbounds %struct.htcp, %struct.htcp* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  br label %84

70:                                               ; preds = %51
  %71 = load %struct.htcp*, %struct.htcp** %4, align 8
  %72 = getelementptr inbounds %struct.htcp, %struct.htcp* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = load i8*, i8** @BETA_MAX, align 8
  %77 = icmp ugt i8* %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = load i8*, i8** @BETA_MAX, align 8
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.htcp*, %struct.htcp** %4, align 8
  %82 = getelementptr inbounds %struct.htcp, %struct.htcp* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %70
  br label %84

84:                                               ; preds = %83, %65
  br label %92

85:                                               ; preds = %48, %44, %39
  %86 = load i8*, i8** @BETA_MIN, align 8
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.htcp*, %struct.htcp** %4, align 8
  %89 = getelementptr inbounds %struct.htcp, %struct.htcp* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.htcp*, %struct.htcp** %4, align 8
  %91 = getelementptr inbounds %struct.htcp, %struct.htcp* %90, i32 0, i32 3
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %31, %85, %84
  ret void
}

declare dso_local i32 @between(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
