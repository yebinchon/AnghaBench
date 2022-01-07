; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_add_header.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_add_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.module = type { i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"#include <linux/build-salt.h>\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"#include <linux/module.h>\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"#include <linux/vermagic.h>\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"#include <linux/compiler.h>\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"BUILD_SALT;\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"MODULE_INFO(vermagic, VERMAGIC_STRING);\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"MODULE_INFO(name, KBUILD_MODNAME);\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"__visible struct module __this_module\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"__section(.gnu.linkonce.this_module) = {\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"\09.name = KBUILD_MODNAME,\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"\09.init = init_module,\0A\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"#ifdef CONFIG_MODULE_UNLOAD\0A\09.exit = cleanup_module,\0A#endif\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"\09.arch = MODULE_ARCH_INIT,\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer*, %struct.module*)* @add_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_header(%struct.buffer* %0, %struct.module* %1) #0 {
  %3 = alloca %struct.buffer*, align 8
  %4 = alloca %struct.module*, align 8
  store %struct.buffer* %0, %struct.buffer** %3, align 8
  store %struct.module* %1, %struct.module** %4, align 8
  %5 = load %struct.buffer*, %struct.buffer** %3, align 8
  %6 = call i32 @buf_printf(%struct.buffer* %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.buffer*, %struct.buffer** %3, align 8
  %8 = call i32 @buf_printf(%struct.buffer* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.buffer*, %struct.buffer** %3, align 8
  %10 = call i32 @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %11 = load %struct.buffer*, %struct.buffer** %3, align 8
  %12 = call i32 @buf_printf(%struct.buffer* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %13 = load %struct.buffer*, %struct.buffer** %3, align 8
  %14 = call i32 @buf_printf(%struct.buffer* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %15 = load %struct.buffer*, %struct.buffer** %3, align 8
  %16 = call i32 @buf_printf(%struct.buffer* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %17 = load %struct.buffer*, %struct.buffer** %3, align 8
  %18 = call i32 @buf_printf(%struct.buffer* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %19 = load %struct.buffer*, %struct.buffer** %3, align 8
  %20 = call i32 @buf_printf(%struct.buffer* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %21 = load %struct.buffer*, %struct.buffer** %3, align 8
  %22 = call i32 @buf_printf(%struct.buffer* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %23 = load %struct.buffer*, %struct.buffer** %3, align 8
  %24 = call i32 @buf_printf(%struct.buffer* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %25 = load %struct.buffer*, %struct.buffer** %3, align 8
  %26 = call i32 @buf_printf(%struct.buffer* %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %27 = load %struct.buffer*, %struct.buffer** %3, align 8
  %28 = call i32 @buf_printf(%struct.buffer* %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %29 = load %struct.buffer*, %struct.buffer** %3, align 8
  %30 = call i32 @buf_printf(%struct.buffer* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %31 = load %struct.module*, %struct.module** %4, align 8
  %32 = getelementptr inbounds %struct.module, %struct.module* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.buffer*, %struct.buffer** %3, align 8
  %37 = call i32 @buf_printf(%struct.buffer* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %2
  %39 = load %struct.module*, %struct.module** %4, align 8
  %40 = getelementptr inbounds %struct.module, %struct.module* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.buffer*, %struct.buffer** %3, align 8
  %45 = call i32 @buf_printf(%struct.buffer* %44, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.buffer*, %struct.buffer** %3, align 8
  %48 = call i32 @buf_printf(%struct.buffer* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  %49 = load %struct.buffer*, %struct.buffer** %3, align 8
  %50 = call i32 @buf_printf(%struct.buffer* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

declare dso_local i32 @buf_printf(%struct.buffer*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
