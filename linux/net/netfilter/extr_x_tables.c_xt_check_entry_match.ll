; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_x_tables.c_xt_check_entry_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_x_tables.c_xt_check_entry_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_entry_match = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @xt_check_entry_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xt_check_entry_match(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xt_entry_match*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = ptrtoint i8* %10 to i64
  %13 = ptrtoint i8* %11 to i64
  %14 = sub i64 %12, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %77

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.xt_entry_match*
  store %struct.xt_entry_match* %21, %struct.xt_entry_match** %8, align 8
  br label %22

22:                                               ; preds = %73, %19
  %23 = load %struct.xt_entry_match*, %struct.xt_entry_match** %8, align 8
  %24 = ptrtoint %struct.xt_entry_match* %23 to i64
  %25 = load i64, i64* %7, align 8
  %26 = urem i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %77

31:                                               ; preds = %22
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %77

37:                                               ; preds = %31
  %38 = load %struct.xt_entry_match*, %struct.xt_entry_match** %8, align 8
  %39 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %42, 4
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %77

47:                                               ; preds = %37
  %48 = load %struct.xt_entry_match*, %struct.xt_entry_match** %8, align 8
  %49 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %77

57:                                               ; preds = %47
  %58 = load %struct.xt_entry_match*, %struct.xt_entry_match** %8, align 8
  %59 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load %struct.xt_entry_match*, %struct.xt_entry_match** %8, align 8
  %65 = bitcast %struct.xt_entry_match* %64 to i8*
  %66 = load %struct.xt_entry_match*, %struct.xt_entry_match** %8, align 8
  %67 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %65, i64 %70
  %72 = bitcast i8* %71 to %struct.xt_entry_match*
  store %struct.xt_entry_match* %72, %struct.xt_entry_match** %8, align 8
  br label %73

73:                                               ; preds = %57
  %74 = load i32, i32* %9, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %22, label %76

76:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %54, %44, %34, %28, %18
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
