; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_orc_gen.c_create_orc_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_orc_gen.c_create_orc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section = type { i32, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.orc_entry = type { i32 }
%struct.rela = type { i64, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [30 x i8] c"missing symbol for section %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@R_X86_64_PC32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.section*, %struct.section*, i32, %struct.section*, i64, %struct.orc_entry*)* @create_orc_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_orc_entry(%struct.section* %0, %struct.section* %1, i32 %2, %struct.section* %3, i64 %4, %struct.orc_entry* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.section*, align 8
  %9 = alloca %struct.section*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.section*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.orc_entry*, align 8
  %14 = alloca %struct.orc_entry*, align 8
  %15 = alloca %struct.rela*, align 8
  store %struct.section* %0, %struct.section** %8, align 8
  store %struct.section* %1, %struct.section** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.section* %3, %struct.section** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.orc_entry* %5, %struct.orc_entry** %13, align 8
  %16 = load %struct.section*, %struct.section** %11, align 8
  %17 = getelementptr inbounds %struct.section, %struct.section* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %6
  %21 = load %struct.section*, %struct.section** %11, align 8
  %22 = getelementptr inbounds %struct.section, %struct.section* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 -1, i32* %7, align 4
  br label %77

25:                                               ; preds = %6
  %26 = load %struct.section*, %struct.section** %8, align 8
  %27 = getelementptr inbounds %struct.section, %struct.section* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.orc_entry*
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %31, i64 %33
  store %struct.orc_entry* %34, %struct.orc_entry** %14, align 8
  %35 = load %struct.orc_entry*, %struct.orc_entry** %14, align 8
  %36 = load %struct.orc_entry*, %struct.orc_entry** %13, align 8
  %37 = call i32 @memcpy(%struct.orc_entry* %35, %struct.orc_entry* %36, i32 4)
  %38 = call %struct.rela* @malloc(i32 32)
  store %struct.rela* %38, %struct.rela** %15, align 8
  %39 = load %struct.rela*, %struct.rela** %15, align 8
  %40 = icmp ne %struct.rela* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %25
  %42 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %77

43:                                               ; preds = %25
  %44 = load %struct.rela*, %struct.rela** %15, align 8
  %45 = call i32 @memset(%struct.rela* %44, i32 0, i32 32)
  %46 = load %struct.section*, %struct.section** %11, align 8
  %47 = getelementptr inbounds %struct.section, %struct.section* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.rela*, %struct.rela** %15, align 8
  %50 = getelementptr inbounds %struct.rela, %struct.rela* %49, i32 0, i32 5
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load %struct.rela*, %struct.rela** %15, align 8
  %53 = getelementptr inbounds %struct.rela, %struct.rela* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* @R_X86_64_PC32, align 4
  %55 = load %struct.rela*, %struct.rela** %15, align 8
  %56 = getelementptr inbounds %struct.rela, %struct.rela* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = load %struct.rela*, %struct.rela** %15, align 8
  %62 = getelementptr inbounds %struct.rela, %struct.rela* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.rela*, %struct.rela** %15, align 8
  %64 = getelementptr inbounds %struct.rela, %struct.rela* %63, i32 0, i32 3
  %65 = load %struct.section*, %struct.section** %9, align 8
  %66 = getelementptr inbounds %struct.section, %struct.section* %65, i32 0, i32 1
  %67 = call i32 @list_add_tail(i32* %64, i32* %66)
  %68 = load %struct.section*, %struct.section** %9, align 8
  %69 = getelementptr inbounds %struct.section, %struct.section* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.rela*, %struct.rela** %15, align 8
  %72 = getelementptr inbounds %struct.rela, %struct.rela* %71, i32 0, i32 2
  %73 = load %struct.rela*, %struct.rela** %15, align 8
  %74 = getelementptr inbounds %struct.rela, %struct.rela* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @hash_add(i32 %70, i32* %72, i32 %75)
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %43, %41, %20
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @memcpy(%struct.orc_entry*, %struct.orc_entry*, i32) #1

declare dso_local %struct.rela* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memset(%struct.rela*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @hash_add(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
