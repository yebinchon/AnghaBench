; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_is_blacklisted.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_is_blacklisted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dump = type { i32 }
%struct.btf_type = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"__builtin_va_list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_dump*, i32)* @btf_dump_is_blacklisted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_dump_is_blacklisted(%struct.btf_dump* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf_dump*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btf_type*, align 8
  store %struct.btf_dump* %0, %struct.btf_dump** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %8 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.btf_type* @btf__type_by_id(i32 %9, i32 %10)
  store %struct.btf_type* %11, %struct.btf_type** %6, align 8
  %12 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %13 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

17:                                               ; preds = %2
  %18 = load %struct.btf_dump*, %struct.btf_dump** %4, align 8
  %19 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %20 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @btf_name_of(%struct.btf_dump* %18, i64 %21)
  %23 = call i64 @strcmp(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %17, %16
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.btf_type* @btf__type_by_id(i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @btf_name_of(%struct.btf_dump*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
