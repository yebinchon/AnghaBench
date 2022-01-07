; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_decode_primary_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_decode_primary_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osdmap = type { i64, i32* }

@e_inval = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.ceph_osdmap*)* @decode_primary_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_primary_affinity(i8** %0, i8* %1, %struct.ceph_osdmap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ceph_osdmap*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ceph_osdmap* %2, %struct.ceph_osdmap** %7, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i32, i32* @e_inval, align 4
  %15 = call i32 @ceph_decode_32_safe(i8** %11, i8* %12, i64 %13, i32 %14)
  %16 = load i64, i64* %8, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %7, align 8
  %20 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @kvfree(i32* %21)
  %23 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %7, align 8
  %24 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  store i32 0, i32* %4, align 4
  br label %66

25:                                               ; preds = %3
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %7, align 8
  %28 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %63

32:                                               ; preds = %25
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %7, align 8
  %36 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @e_inval, align 4
  %41 = call i32 @ceph_decode_need(i8** %33, i8* %34, i32 %39, i32 %40)
  store i64 0, i64* %9, align 8
  br label %42

42:                                               ; preds = %59, %32
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %7, align 8
  %45 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i8**, i8*** %5, align 8
  %52 = call i32 @ceph_decode_32(i8** %51)
  %53 = call i32 @set_primary_affinity(%struct.ceph_osdmap* %49, i64 %50, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %66

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %9, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %9, align 8
  br label %42

62:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %66

63:                                               ; preds = %31
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %62, %56, %18
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @ceph_decode_32_safe(i8**, i8*, i64, i32) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i32 @set_primary_affinity(%struct.ceph_osdmap*, i64, i32) #1

declare dso_local i32 @ceph_decode_32(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
