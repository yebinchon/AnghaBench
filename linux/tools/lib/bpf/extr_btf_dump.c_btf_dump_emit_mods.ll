; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_emit_mods.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_emit_mods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dump = type { i32 }
%struct.id_stack = type { i32, i32* }
%struct.btf_type = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"volatile \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"const \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"restrict \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btf_dump*, %struct.id_stack*)* @btf_dump_emit_mods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btf_dump_emit_mods(%struct.btf_dump* %0, %struct.id_stack* %1) #0 {
  %3 = alloca %struct.btf_dump*, align 8
  %4 = alloca %struct.id_stack*, align 8
  %5 = alloca %struct.btf_type*, align 8
  %6 = alloca i32, align 4
  store %struct.btf_dump* %0, %struct.btf_dump** %3, align 8
  store %struct.id_stack* %1, %struct.id_stack** %4, align 8
  br label %7

7:                                                ; preds = %40, %2
  %8 = load %struct.id_stack*, %struct.id_stack** %4, align 8
  %9 = getelementptr inbounds %struct.id_stack, %struct.id_stack* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %7
  %13 = load %struct.id_stack*, %struct.id_stack** %4, align 8
  %14 = getelementptr inbounds %struct.id_stack, %struct.id_stack* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.id_stack*, %struct.id_stack** %4, align 8
  %17 = getelementptr inbounds %struct.id_stack, %struct.id_stack* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %15, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.btf_dump*, %struct.btf_dump** %3, align 8
  %24 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.btf_type* @btf__type_by_id(i32 %25, i32 %26)
  store %struct.btf_type* %27, %struct.btf_type** %5, align 8
  %28 = load %struct.btf_type*, %struct.btf_type** %5, align 8
  %29 = call i32 @btf_kind(%struct.btf_type* %28)
  switch i32 %29, label %39 [
    i32 128, label %30
    i32 130, label %33
    i32 129, label %36
  ]

30:                                               ; preds = %12
  %31 = load %struct.btf_dump*, %struct.btf_dump** %3, align 8
  %32 = call i32 @btf_dump_printf(%struct.btf_dump* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %40

33:                                               ; preds = %12
  %34 = load %struct.btf_dump*, %struct.btf_dump** %3, align 8
  %35 = call i32 @btf_dump_printf(%struct.btf_dump* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %40

36:                                               ; preds = %12
  %37 = load %struct.btf_dump*, %struct.btf_dump** %3, align 8
  %38 = call i32 @btf_dump_printf(%struct.btf_dump* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %40

39:                                               ; preds = %12
  br label %45

40:                                               ; preds = %36, %33, %30
  %41 = load %struct.id_stack*, %struct.id_stack** %4, align 8
  %42 = getelementptr inbounds %struct.id_stack, %struct.id_stack* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  br label %7

45:                                               ; preds = %39, %7
  ret void
}

declare dso_local %struct.btf_type* @btf__type_by_id(i32, i32) #1

declare dso_local i32 @btf_kind(%struct.btf_type*) #1

declare dso_local i32 @btf_dump_printf(%struct.btf_dump*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
