; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c___decode_pg_upmap_items.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c___decode_pg_upmap_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_pg_mapping = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*** }

@e_inval = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_pg_mapping* (i8**, i8*, i32)* @__decode_pg_upmap_items to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_pg_mapping* @__decode_pg_upmap_items(i8** %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ceph_pg_mapping*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ceph_pg_mapping*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @e_inval, align 4
  %15 = call i32 @ceph_decode_32_safe(i8** %11, i8* %12, i32 %13, i32 %14)
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = load i32, i32* @SIZE_MAX, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 16
  %21 = udiv i64 %20, 8
  %22 = icmp ugt i64 %17, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.ceph_pg_mapping* @ERR_PTR(i32 %25)
  store %struct.ceph_pg_mapping* %26, %struct.ceph_pg_mapping** %4, align 8
  br label %90

27:                                               ; preds = %3
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = mul nsw i32 2, %30
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @e_inval, align 4
  %36 = call i32 @ceph_decode_need(i8** %28, i8* %29, i32 %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 2, %37
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call %struct.ceph_pg_mapping* @alloc_pg_mapping(i32 %41)
  store %struct.ceph_pg_mapping* %42, %struct.ceph_pg_mapping** %8, align 8
  %43 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %8, align 8
  %44 = icmp ne %struct.ceph_pg_mapping* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %27
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.ceph_pg_mapping* @ERR_PTR(i32 %47)
  store %struct.ceph_pg_mapping* %48, %struct.ceph_pg_mapping** %4, align 8
  br label %90

49:                                               ; preds = %27
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %8, align 8
  %52 = getelementptr inbounds %struct.ceph_pg_mapping, %struct.ceph_pg_mapping* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %81, %49
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %54
  %59 = load i8**, i8*** %5, align 8
  %60 = call i8* @ceph_decode_32(i8** %59)
  %61 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %8, align 8
  %62 = getelementptr inbounds %struct.ceph_pg_mapping, %struct.ceph_pg_mapping* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i8***, i8**** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8**, i8*** %64, i64 %66
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  store i8* %60, i8** %69, align 8
  %70 = load i8**, i8*** %5, align 8
  %71 = call i8* @ceph_decode_32(i8** %70)
  %72 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %8, align 8
  %73 = getelementptr inbounds %struct.ceph_pg_mapping, %struct.ceph_pg_mapping* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i8***, i8**** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8**, i8*** %75, i64 %77
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  store i8* %71, i8** %80, align 8
  br label %81

81:                                               ; preds = %58
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %54

84:                                               ; preds = %54
  %85 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %8, align 8
  store %struct.ceph_pg_mapping* %85, %struct.ceph_pg_mapping** %4, align 8
  br label %90

86:                                               ; No predecessors!
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  %89 = call %struct.ceph_pg_mapping* @ERR_PTR(i32 %88)
  store %struct.ceph_pg_mapping* %89, %struct.ceph_pg_mapping** %4, align 8
  br label %90

90:                                               ; preds = %86, %84, %45, %23
  %91 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %4, align 8
  ret %struct.ceph_pg_mapping* %91
}

declare dso_local i32 @ceph_decode_32_safe(i8**, i8*, i32, i32) #1

declare dso_local %struct.ceph_pg_mapping* @ERR_PTR(i32) #1

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local %struct.ceph_pg_mapping* @alloc_pg_mapping(i32) #1

declare dso_local i8* @ceph_decode_32(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
