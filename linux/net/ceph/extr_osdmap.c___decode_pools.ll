; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c___decode_pools.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c___decode_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osdmap = type { i32 }
%struct.ceph_pg_pool_info = type { i32 }

@e_inval = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.ceph_osdmap*, i32)* @__decode_pools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__decode_pools(i8** %0, i8* %1, %struct.ceph_osdmap* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ceph_osdmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ceph_pg_pool_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.ceph_osdmap* %2, %struct.ceph_osdmap** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8**, i8*** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @e_inval, align 4
  %18 = call i32 @ceph_decode_32_safe(i8** %14, i8* %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %70, %4
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %10, align 4
  %22 = icmp ne i32 %20, 0
  br i1 %22, label %23, label %71

23:                                               ; preds = %19
  %24 = load i8**, i8*** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @e_inval, align 4
  %28 = call i32 @ceph_decode_64_safe(i8** %24, i8* %25, i32 %26, i32 %27)
  %29 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %8, align 8
  %30 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %29, i32 0, i32 0
  %31 = load i32, i32* %12, align 4
  %32 = call %struct.ceph_pg_pool_info* @__lookup_pg_pool(i32* %30, i32 %31)
  store %struct.ceph_pg_pool_info* %32, %struct.ceph_pg_pool_info** %11, align 8
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %11, align 8
  %37 = icmp ne %struct.ceph_pg_pool_info* %36, null
  br i1 %37, label %61, label %38

38:                                               ; preds = %35, %23
  %39 = load i32, i32* @GFP_NOFS, align 4
  %40 = call %struct.ceph_pg_pool_info* @kzalloc(i32 4, i32 %39)
  store %struct.ceph_pg_pool_info* %40, %struct.ceph_pg_pool_info** %11, align 8
  %41 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %11, align 8
  %42 = icmp ne %struct.ceph_pg_pool_info* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %75

46:                                               ; preds = %38
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %11, align 8
  %49 = getelementptr inbounds %struct.ceph_pg_pool_info, %struct.ceph_pg_pool_info* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %8, align 8
  %51 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %50, i32 0, i32 0
  %52 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %11, align 8
  %53 = call i32 @__insert_pg_pool(i32* %51, %struct.ceph_pg_pool_info* %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %11, align 8
  %58 = call i32 @kfree(%struct.ceph_pg_pool_info* %57)
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %5, align 4
  br label %75

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60, %35
  %62 = load i8**, i8*** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load %struct.ceph_pg_pool_info*, %struct.ceph_pg_pool_info** %11, align 8
  %65 = call i32 @decode_pool(i8** %62, i8* %63, %struct.ceph_pg_pool_info* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %5, align 4
  br label %75

70:                                               ; preds = %61
  br label %19

71:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %75

72:                                               ; No predecessors!
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %72, %71, %68, %56, %43
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @ceph_decode_32_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_64_safe(i8**, i8*, i32, i32) #1

declare dso_local %struct.ceph_pg_pool_info* @__lookup_pg_pool(i32*, i32) #1

declare dso_local %struct.ceph_pg_pool_info* @kzalloc(i32, i32) #1

declare dso_local i32 @__insert_pg_pool(i32*, %struct.ceph_pg_pool_info*) #1

declare dso_local i32 @kfree(%struct.ceph_pg_pool_info*) #1

declare dso_local i32 @decode_pool(i8**, i8*, %struct.ceph_pg_pool_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
