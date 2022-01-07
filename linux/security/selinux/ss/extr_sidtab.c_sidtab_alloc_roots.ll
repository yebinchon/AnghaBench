; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_alloc_roots.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_alloc_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sidtab = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i8* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@SIDTAB_NODE_ALLOC_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sidtab*, i64)* @sidtab_alloc_roots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sidtab_alloc_roots(%struct.sidtab* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sidtab*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.sidtab* %0, %struct.sidtab** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %8 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @SIDTAB_NODE_ALLOC_SIZE, align 4
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call i8* @kzalloc(i32 %15, i32 %16)
  %18 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %19 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i8* %17, i8** %22, align 8
  %23 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %24 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %14
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %94

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33, %2
  store i64 1, i64* %6, align 8
  br label %35

35:                                               ; preds = %90, %34
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ule i64 %36, %37
  br i1 %38, label %39, label %93

39:                                               ; preds = %35
  %40 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %41 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = icmp ne %struct.TYPE_3__* %46, null
  br i1 %47, label %89, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* @SIDTAB_NODE_ALLOC_SIZE, align 4
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = call i8* @kzalloc(i32 %49, i32 %50)
  %52 = bitcast i8* %51 to %struct.TYPE_3__*
  %53 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %54 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store %struct.TYPE_3__* %52, %struct.TYPE_3__** %58, align 8
  %59 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %60 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = icmp ne %struct.TYPE_3__* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %48
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %94

70:                                               ; preds = %48
  %71 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %72 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 0
  %81 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %82 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = sub i64 %84, 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = bitcast %struct.TYPE_4__* %80 to i8*
  %88 = bitcast %struct.TYPE_4__* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 16, i1 false)
  br label %89

89:                                               ; preds = %70, %39
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %6, align 8
  br label %35

93:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %67, %30
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i8* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
