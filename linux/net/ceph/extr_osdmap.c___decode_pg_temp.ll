; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c___decode_pg_temp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c___decode_pg_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_pg_mapping = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@e_inval = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_pg_mapping* (i8**, i8*, i32)* @__decode_pg_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_pg_mapping* @__decode_pg_temp(i8** %0, i8* %1, i32 %2) #0 {
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
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store %struct.ceph_pg_mapping* null, %struct.ceph_pg_mapping** %4, align 8
  br label %82

22:                                               ; preds = %18, %3
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = load i32, i32* @SIZE_MAX, align 4
  %26 = sext i32 %25 to i64
  %27 = sub i64 %26, 16
  %28 = udiv i64 %27, 4
  %29 = icmp ugt i64 %24, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.ceph_pg_mapping* @ERR_PTR(i32 %32)
  store %struct.ceph_pg_mapping* %33, %struct.ceph_pg_mapping** %4, align 8
  br label %82

34:                                               ; preds = %22
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @e_inval, align 4
  %42 = call i32 @ceph_decode_need(i8** %35, i8* %36, i32 %40, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call %struct.ceph_pg_mapping* @alloc_pg_mapping(i32 %46)
  store %struct.ceph_pg_mapping* %47, %struct.ceph_pg_mapping** %8, align 8
  %48 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %8, align 8
  %49 = icmp ne %struct.ceph_pg_mapping* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %34
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.ceph_pg_mapping* @ERR_PTR(i32 %52)
  store %struct.ceph_pg_mapping* %53, %struct.ceph_pg_mapping** %4, align 8
  br label %82

54:                                               ; preds = %34
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %8, align 8
  %57 = getelementptr inbounds %struct.ceph_pg_mapping, %struct.ceph_pg_mapping* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %73, %54
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load i8**, i8*** %5, align 8
  %65 = call i32 @ceph_decode_32(i8** %64)
  %66 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %8, align 8
  %67 = getelementptr inbounds %struct.ceph_pg_mapping, %struct.ceph_pg_mapping* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %65, i32* %72, align 4
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %59

76:                                               ; preds = %59
  %77 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %8, align 8
  store %struct.ceph_pg_mapping* %77, %struct.ceph_pg_mapping** %4, align 8
  br label %82

78:                                               ; No predecessors!
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  %81 = call %struct.ceph_pg_mapping* @ERR_PTR(i32 %80)
  store %struct.ceph_pg_mapping* %81, %struct.ceph_pg_mapping** %4, align 8
  br label %82

82:                                               ; preds = %78, %76, %50, %30, %21
  %83 = load %struct.ceph_pg_mapping*, %struct.ceph_pg_mapping** %4, align 8
  ret %struct.ceph_pg_mapping* %83
}

declare dso_local i32 @ceph_decode_32_safe(i8**, i8*, i32, i32) #1

declare dso_local %struct.ceph_pg_mapping* @ERR_PTR(i32) #1

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local %struct.ceph_pg_mapping* @alloc_pg_mapping(i32) #1

declare dso_local i32 @ceph_decode_32(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
