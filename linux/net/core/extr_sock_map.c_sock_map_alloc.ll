; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock_map.c_sock_map_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock_map.c_sock_map_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32, i32, i32 }
%union.bpf_attr = type { i64 }
%struct.bpf_stab = type { %struct.bpf_map, i64, i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@SOCK_CREATE_FLAG_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_map* (%union.bpf_attr*)* @sock_map_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_map* @sock_map_alloc(%union.bpf_attr* %0) #0 {
  %2 = alloca %struct.bpf_map*, align 8
  %3 = alloca %union.bpf_attr*, align 8
  %4 = alloca %struct.bpf_stab*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %7 = load i32, i32* @CAP_NET_ADMIN, align 4
  %8 = call i32 @capable(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EPERM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.bpf_map* @ERR_PTR(i32 %12)
  store %struct.bpf_map* %13, %struct.bpf_map** %2, align 8
  br label %107

14:                                               ; preds = %1
  %15 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %16 = bitcast %union.bpf_attr* %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %14
  %20 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %21 = bitcast %union.bpf_attr* %20 to i32*
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 4
  br i1 %23, label %37, label %24

24:                                               ; preds = %19
  %25 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %26 = bitcast %union.bpf_attr* %25 to i32*
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 4
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %31 = bitcast %union.bpf_attr* %30 to i32*
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SOCK_CREATE_FLAG_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29, %24, %19, %14
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.bpf_map* @ERR_PTR(i32 %39)
  store %struct.bpf_map* %40, %struct.bpf_map** %2, align 8
  br label %107

41:                                               ; preds = %29
  %42 = load i32, i32* @GFP_USER, align 4
  %43 = call %struct.bpf_stab* @kzalloc(i32 32, i32 %42)
  store %struct.bpf_stab* %43, %struct.bpf_stab** %4, align 8
  %44 = load %struct.bpf_stab*, %struct.bpf_stab** %4, align 8
  %45 = icmp ne %struct.bpf_stab* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.bpf_map* @ERR_PTR(i32 %48)
  store %struct.bpf_map* %49, %struct.bpf_map** %2, align 8
  br label %107

50:                                               ; preds = %41
  %51 = load %struct.bpf_stab*, %struct.bpf_stab** %4, align 8
  %52 = getelementptr inbounds %struct.bpf_stab, %struct.bpf_stab* %51, i32 0, i32 0
  %53 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %54 = call i32 @bpf_map_init_from_attr(%struct.bpf_map* %52, %union.bpf_attr* %53)
  %55 = load %struct.bpf_stab*, %struct.bpf_stab** %4, align 8
  %56 = getelementptr inbounds %struct.bpf_stab, %struct.bpf_stab* %55, i32 0, i32 2
  %57 = call i32 @raw_spin_lock_init(i32* %56)
  %58 = load %struct.bpf_stab*, %struct.bpf_stab** %4, align 8
  %59 = getelementptr inbounds %struct.bpf_stab, %struct.bpf_stab* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  %65 = load %struct.bpf_stab*, %struct.bpf_stab** %4, align 8
  %66 = getelementptr inbounds %struct.bpf_stab, %struct.bpf_stab* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %66, i32 0, i32 1
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @bpf_map_charge_init(i32* %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %50
  br label %102

73:                                               ; preds = %50
  %74 = load %struct.bpf_stab*, %struct.bpf_stab** %4, align 8
  %75 = getelementptr inbounds %struct.bpf_stab, %struct.bpf_stab* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 8
  %80 = trunc i64 %79 to i32
  %81 = load %struct.bpf_stab*, %struct.bpf_stab** %4, align 8
  %82 = getelementptr inbounds %struct.bpf_stab, %struct.bpf_stab* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @bpf_map_area_alloc(i32 %80, i32 %84)
  %86 = load %struct.bpf_stab*, %struct.bpf_stab** %4, align 8
  %87 = getelementptr inbounds %struct.bpf_stab, %struct.bpf_stab* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.bpf_stab*, %struct.bpf_stab** %4, align 8
  %89 = getelementptr inbounds %struct.bpf_stab, %struct.bpf_stab* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %73
  %93 = load %struct.bpf_stab*, %struct.bpf_stab** %4, align 8
  %94 = getelementptr inbounds %struct.bpf_stab, %struct.bpf_stab* %93, i32 0, i32 0
  store %struct.bpf_map* %94, %struct.bpf_map** %2, align 8
  br label %107

95:                                               ; preds = %73
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  %98 = load %struct.bpf_stab*, %struct.bpf_stab** %4, align 8
  %99 = getelementptr inbounds %struct.bpf_stab, %struct.bpf_stab* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %99, i32 0, i32 1
  %101 = call i32 @bpf_map_charge_finish(i32* %100)
  br label %102

102:                                              ; preds = %95, %72
  %103 = load %struct.bpf_stab*, %struct.bpf_stab** %4, align 8
  %104 = call i32 @kfree(%struct.bpf_stab* %103)
  %105 = load i32, i32* %6, align 4
  %106 = call %struct.bpf_map* @ERR_PTR(i32 %105)
  store %struct.bpf_map* %106, %struct.bpf_map** %2, align 8
  br label %107

107:                                              ; preds = %102, %92, %46, %37, %10
  %108 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  ret %struct.bpf_map* %108
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.bpf_map* @ERR_PTR(i32) #1

declare dso_local %struct.bpf_stab* @kzalloc(i32, i32) #1

declare dso_local i32 @bpf_map_init_from_attr(%struct.bpf_map*, %union.bpf_attr*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @bpf_map_charge_init(i32*, i32) #1

declare dso_local i64 @bpf_map_area_alloc(i32, i32) #1

declare dso_local i32 @bpf_map_charge_finish(i32*) #1

declare dso_local i32 @kfree(%struct.bpf_stab*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
