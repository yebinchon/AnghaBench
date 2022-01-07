; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_bpf_create_map_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_bpf_create_map_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_create_map_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.bpf_attr = type { i32 }

@BPF_OBJ_NAME_LEN = common dso_local global i64 0, align 8
@BPF_MAP_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_create_map_xattr(%struct.bpf_create_map_attr* %0) #0 {
  %2 = alloca %struct.bpf_create_map_attr*, align 8
  %3 = alloca %union.bpf_attr, align 4
  store %struct.bpf_create_map_attr* %0, %struct.bpf_create_map_attr** %2, align 8
  %4 = call i32 @memset(%union.bpf_attr* %3, i8 signext 0, i32 4)
  %5 = load %struct.bpf_create_map_attr*, %struct.bpf_create_map_attr** %2, align 8
  %6 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %5, i32 0, i32 11
  %7 = load i32, i32* %6, align 4
  %8 = bitcast %union.bpf_attr* %3 to i32*
  store i32 %7, i32* %8, align 4
  %9 = load %struct.bpf_create_map_attr*, %struct.bpf_create_map_attr** %2, align 8
  %10 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.bpf_attr* %3 to i32*
  store i32 %11, i32* %12, align 4
  %13 = load %struct.bpf_create_map_attr*, %struct.bpf_create_map_attr** %2, align 8
  %14 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = bitcast %union.bpf_attr* %3 to i32*
  store i32 %15, i32* %16, align 4
  %17 = load %struct.bpf_create_map_attr*, %struct.bpf_create_map_attr** %2, align 8
  %18 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %union.bpf_attr* %3 to i32*
  store i32 %19, i32* %20, align 4
  %21 = load %struct.bpf_create_map_attr*, %struct.bpf_create_map_attr** %2, align 8
  %22 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = bitcast %union.bpf_attr* %3 to i32*
  store i32 %23, i32* %24, align 4
  %25 = load %struct.bpf_create_map_attr*, %struct.bpf_create_map_attr** %2, align 8
  %26 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %1
  %30 = bitcast %union.bpf_attr* %3 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bpf_create_map_attr*, %struct.bpf_create_map_attr** %2, align 8
  %33 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bpf_create_map_attr*, %struct.bpf_create_map_attr** %2, align 8
  %36 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strlen(i32 %37)
  %39 = load i64, i64* @BPF_OBJ_NAME_LEN, align 8
  %40 = sub nsw i64 %39, 1
  %41 = call i32 @min(i32 %38, i64 %40)
  %42 = call i32 @memcpy(i32 %31, i32 %34, i32 %41)
  br label %43

43:                                               ; preds = %29, %1
  %44 = load %struct.bpf_create_map_attr*, %struct.bpf_create_map_attr** %2, align 8
  %45 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = bitcast %union.bpf_attr* %3 to i32*
  store i32 %46, i32* %47, align 4
  %48 = load %struct.bpf_create_map_attr*, %struct.bpf_create_map_attr** %2, align 8
  %49 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = bitcast %union.bpf_attr* %3 to i32*
  store i32 %50, i32* %51, align 4
  %52 = load %struct.bpf_create_map_attr*, %struct.bpf_create_map_attr** %2, align 8
  %53 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = bitcast %union.bpf_attr* %3 to i32*
  store i32 %54, i32* %55, align 4
  %56 = load %struct.bpf_create_map_attr*, %struct.bpf_create_map_attr** %2, align 8
  %57 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = bitcast %union.bpf_attr* %3 to i32*
  store i32 %58, i32* %59, align 4
  %60 = load %struct.bpf_create_map_attr*, %struct.bpf_create_map_attr** %2, align 8
  %61 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = bitcast %union.bpf_attr* %3 to i32*
  store i32 %62, i32* %63, align 4
  %64 = load %struct.bpf_create_map_attr*, %struct.bpf_create_map_attr** %2, align 8
  %65 = getelementptr inbounds %struct.bpf_create_map_attr, %struct.bpf_create_map_attr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = bitcast %union.bpf_attr* %3 to i32*
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @BPF_MAP_CREATE, align 4
  %69 = call i32 @sys_bpf(i32 %68, %union.bpf_attr* %3, i32 4)
  ret i32 %69
}

declare dso_local i32 @memset(%union.bpf_attr*, i8 signext, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @sys_bpf(i32, %union.bpf_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
