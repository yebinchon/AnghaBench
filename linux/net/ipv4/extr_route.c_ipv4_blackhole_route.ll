; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ipv4_blackhole_route.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_route.c_ipv4_blackhole_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i64 }
%struct.dst_entry = type { i32, i64, i32, i32 }
%struct.rtable = type { i64, %struct.dst_entry, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ipv4_dst_blackhole_ops = common dso_local global i32 0, align 4
@DST_OBSOLETE_DEAD = common dso_local global i32 0, align 4
@dst_discard = common dso_local global i32 0, align 4
@dst_discard_out = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @ipv4_blackhole_route(%struct.net* %0, %struct.dst_entry* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.rtable*, align 8
  %6 = alloca %struct.rtable*, align 8
  %7 = alloca %struct.dst_entry*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %4, align 8
  %8 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %9 = bitcast %struct.dst_entry* %8 to %struct.rtable*
  store %struct.rtable* %9, %struct.rtable** %5, align 8
  %10 = load i32, i32* @DST_OBSOLETE_DEAD, align 4
  %11 = call %struct.rtable* @dst_alloc(i32* @ipv4_dst_blackhole_ops, i32* null, i32 1, i32 %10, i32 0)
  store %struct.rtable* %11, %struct.rtable** %6, align 8
  %12 = load %struct.rtable*, %struct.rtable** %6, align 8
  %13 = icmp ne %struct.rtable* %12, null
  br i1 %13, label %14, label %112

14:                                               ; preds = %2
  %15 = load %struct.rtable*, %struct.rtable** %6, align 8
  %16 = getelementptr inbounds %struct.rtable, %struct.rtable* %15, i32 0, i32 1
  store %struct.dst_entry* %16, %struct.dst_entry** %7, align 8
  %17 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %18 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i32, i32* @dst_discard, align 4
  %20 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %21 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @dst_discard_out, align 4
  %23 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %24 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.net*, %struct.net** %3, align 8
  %26 = getelementptr inbounds %struct.net, %struct.net* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %29 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %31 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %14
  %35 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %36 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @dev_hold(i64 %37)
  br label %39

39:                                               ; preds = %34, %14
  %40 = load %struct.rtable*, %struct.rtable** %5, align 8
  %41 = getelementptr inbounds %struct.rtable, %struct.rtable* %40, i32 0, i32 12
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.rtable*, %struct.rtable** %6, align 8
  %44 = getelementptr inbounds %struct.rtable, %struct.rtable* %43, i32 0, i32 12
  store i32 %42, i32* %44, align 8
  %45 = load %struct.rtable*, %struct.rtable** %5, align 8
  %46 = getelementptr inbounds %struct.rtable, %struct.rtable* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rtable*, %struct.rtable** %6, align 8
  %49 = getelementptr inbounds %struct.rtable, %struct.rtable* %48, i32 0, i32 11
  store i32 %47, i32* %49, align 4
  %50 = load %struct.rtable*, %struct.rtable** %5, align 8
  %51 = getelementptr inbounds %struct.rtable, %struct.rtable* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.rtable*, %struct.rtable** %6, align 8
  %54 = getelementptr inbounds %struct.rtable, %struct.rtable* %53, i32 0, i32 10
  store i32 %52, i32* %54, align 8
  %55 = load %struct.rtable*, %struct.rtable** %5, align 8
  %56 = getelementptr inbounds %struct.rtable, %struct.rtable* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.rtable*, %struct.rtable** %6, align 8
  %59 = getelementptr inbounds %struct.rtable, %struct.rtable* %58, i32 0, i32 9
  store i32 %57, i32* %59, align 4
  %60 = load %struct.net*, %struct.net** %3, align 8
  %61 = call i32 @rt_genid_ipv4(%struct.net* %60)
  %62 = load %struct.rtable*, %struct.rtable** %6, align 8
  %63 = getelementptr inbounds %struct.rtable, %struct.rtable* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 8
  %64 = load %struct.rtable*, %struct.rtable** %5, align 8
  %65 = getelementptr inbounds %struct.rtable, %struct.rtable* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.rtable*, %struct.rtable** %6, align 8
  %68 = getelementptr inbounds %struct.rtable, %struct.rtable* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 4
  %69 = load %struct.rtable*, %struct.rtable** %5, align 8
  %70 = getelementptr inbounds %struct.rtable, %struct.rtable* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.rtable*, %struct.rtable** %6, align 8
  %73 = getelementptr inbounds %struct.rtable, %struct.rtable* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 8
  %74 = load %struct.rtable*, %struct.rtable** %5, align 8
  %75 = getelementptr inbounds %struct.rtable, %struct.rtable* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.rtable*, %struct.rtable** %6, align 8
  %78 = getelementptr inbounds %struct.rtable, %struct.rtable* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load %struct.rtable*, %struct.rtable** %5, align 8
  %80 = getelementptr inbounds %struct.rtable, %struct.rtable* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.rtable*, %struct.rtable** %6, align 8
  %83 = getelementptr inbounds %struct.rtable, %struct.rtable* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.rtable*, %struct.rtable** %6, align 8
  %85 = getelementptr inbounds %struct.rtable, %struct.rtable* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AF_INET, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %39
  %90 = load %struct.rtable*, %struct.rtable** %5, align 8
  %91 = getelementptr inbounds %struct.rtable, %struct.rtable* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.rtable*, %struct.rtable** %6, align 8
  %94 = getelementptr inbounds %struct.rtable, %struct.rtable* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  br label %108

95:                                               ; preds = %39
  %96 = load %struct.rtable*, %struct.rtable** %6, align 8
  %97 = getelementptr inbounds %struct.rtable, %struct.rtable* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @AF_INET6, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.rtable*, %struct.rtable** %5, align 8
  %103 = getelementptr inbounds %struct.rtable, %struct.rtable* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.rtable*, %struct.rtable** %6, align 8
  %106 = getelementptr inbounds %struct.rtable, %struct.rtable* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %101, %95
  br label %108

108:                                              ; preds = %107, %89
  %109 = load %struct.rtable*, %struct.rtable** %6, align 8
  %110 = getelementptr inbounds %struct.rtable, %struct.rtable* %109, i32 0, i32 2
  %111 = call i32 @INIT_LIST_HEAD(i32* %110)
  br label %112

112:                                              ; preds = %108, %2
  %113 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %114 = call i32 @dst_release(%struct.dst_entry* %113)
  %115 = load %struct.rtable*, %struct.rtable** %6, align 8
  %116 = icmp ne %struct.rtable* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.rtable*, %struct.rtable** %6, align 8
  %119 = getelementptr inbounds %struct.rtable, %struct.rtable* %118, i32 0, i32 1
  br label %124

120:                                              ; preds = %112
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  %123 = call %struct.dst_entry* @ERR_PTR(i32 %122)
  br label %124

124:                                              ; preds = %120, %117
  %125 = phi %struct.dst_entry* [ %119, %117 ], [ %123, %120 ]
  ret %struct.dst_entry* %125
}

declare dso_local %struct.rtable* @dst_alloc(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @dev_hold(i64) #1

declare dso_local i32 @rt_genid_ipv4(%struct.net*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local %struct.dst_entry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
