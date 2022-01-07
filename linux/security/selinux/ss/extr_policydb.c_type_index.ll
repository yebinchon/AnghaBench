; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_type_index.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_type_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.type_datum**, i8***, %struct.TYPE_2__ }
%struct.type_datum = type { i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SYM_TYPES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @type_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_index(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.policydb*, align 8
  %9 = alloca %struct.type_datum*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.type_datum*
  store %struct.type_datum* %11, %struct.type_datum** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.policydb*
  store %struct.policydb* %13, %struct.policydb** %8, align 8
  %14 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %15 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %69

18:                                               ; preds = %3
  %19 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %20 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %25 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.policydb*, %struct.policydb** %8, align 8
  %28 = getelementptr inbounds %struct.policydb, %struct.policydb* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %26, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %23
  %33 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %34 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.policydb*, %struct.policydb** %8, align 8
  %37 = getelementptr inbounds %struct.policydb, %struct.policydb* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = icmp sgt i64 %35, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32, %23, %18
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %70

45:                                               ; preds = %32
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.policydb*, %struct.policydb** %8, align 8
  %48 = getelementptr inbounds %struct.policydb, %struct.policydb* %47, i32 0, i32 1
  %49 = load i8***, i8**** %48, align 8
  %50 = load i64, i64* @SYM_TYPES, align 8
  %51 = getelementptr inbounds i8**, i8*** %49, i64 %50
  %52 = load i8**, i8*** %51, align 8
  %53 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %54 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %52, i64 %57
  store i8* %46, i8** %58, align 8
  %59 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %60 = load %struct.policydb*, %struct.policydb** %8, align 8
  %61 = getelementptr inbounds %struct.policydb, %struct.policydb* %60, i32 0, i32 0
  %62 = load %struct.type_datum**, %struct.type_datum*** %61, align 8
  %63 = load %struct.type_datum*, %struct.type_datum** %9, align 8
  %64 = getelementptr inbounds %struct.type_datum, %struct.type_datum* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.type_datum*, %struct.type_datum** %62, i64 %67
  store %struct.type_datum* %59, %struct.type_datum** %68, align 8
  br label %69

69:                                               ; preds = %45, %3
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %42
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
