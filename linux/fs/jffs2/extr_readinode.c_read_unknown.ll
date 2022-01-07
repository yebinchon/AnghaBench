; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_readinode.c_read_unknown.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_readinode.c_read_unknown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_raw_node_ref = type { i32 }
%struct.jffs2_unknown_node = type { i32, i32, i32, i32 }

@REF_UNCHECKED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"REF_UNCHECKED but unknown node at %#08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Node is {%04x,%04x,%08x,%08x}. Please report this error.\0A\00", align 1
@JFFS2_NODE_ACCURATE = common dso_local global i32 0, align 4
@JFFS2_COMPAT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"unknown INCOMPAT nodetype %#04X at %#08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"unknown ROCOMPAT nodetype %#04X at %#08x\0A\00", align 1
@JFFS2_SB_FLAG_RO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"unknown RWCOMPAT_COPY nodetype %#04X at %#08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"unknown RWCOMPAT_DELETE nodetype %#04X at %#08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_sb_info*, %struct.jffs2_raw_node_ref*, %struct.jffs2_unknown_node*)* @read_unknown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_unknown(%struct.jffs2_sb_info* %0, %struct.jffs2_raw_node_ref* %1, %struct.jffs2_unknown_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jffs2_sb_info*, align 8
  %6 = alloca %struct.jffs2_raw_node_ref*, align 8
  %7 = alloca %struct.jffs2_unknown_node*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %5, align 8
  store %struct.jffs2_raw_node_ref* %1, %struct.jffs2_raw_node_ref** %6, align 8
  store %struct.jffs2_unknown_node* %2, %struct.jffs2_unknown_node** %7, align 8
  %8 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %9 = call i64 @ref_flags(%struct.jffs2_raw_node_ref* %8)
  %10 = load i64, i64* @REF_UNCHECKED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %3
  %13 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %14 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %13)
  %15 = call i32 (i8*, i32, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.jffs2_unknown_node*, %struct.jffs2_unknown_node** %7, align 8
  %17 = getelementptr inbounds %struct.jffs2_unknown_node, %struct.jffs2_unknown_node* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @je16_to_cpu(i32 %18)
  %20 = load %struct.jffs2_unknown_node*, %struct.jffs2_unknown_node** %7, align 8
  %21 = getelementptr inbounds %struct.jffs2_unknown_node, %struct.jffs2_unknown_node* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @je16_to_cpu(i32 %22)
  %24 = load %struct.jffs2_unknown_node*, %struct.jffs2_unknown_node** %7, align 8
  %25 = getelementptr inbounds %struct.jffs2_unknown_node, %struct.jffs2_unknown_node* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @je32_to_cpu(i32 %26)
  %28 = load %struct.jffs2_unknown_node*, %struct.jffs2_unknown_node** %7, align 8
  %29 = getelementptr inbounds %struct.jffs2_unknown_node, %struct.jffs2_unknown_node* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @je32_to_cpu(i32 %30)
  %32 = call i32 (i8*, i32, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %23, i32 %27, i32 %31)
  %33 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %34 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %35 = call i32 @jffs2_mark_node_obsolete(%struct.jffs2_sb_info* %33, %struct.jffs2_raw_node_ref* %34)
  store i32 0, i32* %4, align 4
  br label %98

36:                                               ; preds = %3
  %37 = load i32, i32* @JFFS2_NODE_ACCURATE, align 4
  %38 = load %struct.jffs2_unknown_node*, %struct.jffs2_unknown_node** %7, align 8
  %39 = getelementptr inbounds %struct.jffs2_unknown_node, %struct.jffs2_unknown_node* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @je16_to_cpu(i32 %40)
  %42 = or i32 %37, %41
  %43 = call i32 @cpu_to_je16(i32 %42)
  %44 = load %struct.jffs2_unknown_node*, %struct.jffs2_unknown_node** %7, align 8
  %45 = getelementptr inbounds %struct.jffs2_unknown_node, %struct.jffs2_unknown_node* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.jffs2_unknown_node*, %struct.jffs2_unknown_node** %7, align 8
  %47 = getelementptr inbounds %struct.jffs2_unknown_node, %struct.jffs2_unknown_node* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @je16_to_cpu(i32 %48)
  %50 = load i32, i32* @JFFS2_COMPAT_MASK, align 4
  %51 = and i32 %49, %50
  switch i32 %51, label %97 [
    i32 131, label %52
    i32 130, label %61
    i32 129, label %78
    i32 128, label %86
  ]

52:                                               ; preds = %36
  %53 = load %struct.jffs2_unknown_node*, %struct.jffs2_unknown_node** %7, align 8
  %54 = getelementptr inbounds %struct.jffs2_unknown_node, %struct.jffs2_unknown_node* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @je16_to_cpu(i32 %55)
  %57 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %58 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %57)
  %59 = call i32 (i8*, i32, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %58)
  %60 = call i32 (...) @BUG()
  br label %97

61:                                               ; preds = %36
  %62 = load %struct.jffs2_unknown_node*, %struct.jffs2_unknown_node** %7, align 8
  %63 = getelementptr inbounds %struct.jffs2_unknown_node, %struct.jffs2_unknown_node* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @je16_to_cpu(i32 %64)
  %66 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %67 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %66)
  %68 = call i32 (i8*, i32, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %67)
  %69 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %70 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @JFFS2_SB_FLAG_RO, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @BUG_ON(i32 %76)
  br label %97

78:                                               ; preds = %36
  %79 = load %struct.jffs2_unknown_node*, %struct.jffs2_unknown_node** %7, align 8
  %80 = getelementptr inbounds %struct.jffs2_unknown_node, %struct.jffs2_unknown_node* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @je16_to_cpu(i32 %81)
  %83 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %84 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %83)
  %85 = call i32 @JFFS2_NOTICE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %82, i32 %84)
  br label %97

86:                                               ; preds = %36
  %87 = load %struct.jffs2_unknown_node*, %struct.jffs2_unknown_node** %7, align 8
  %88 = getelementptr inbounds %struct.jffs2_unknown_node, %struct.jffs2_unknown_node* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @je16_to_cpu(i32 %89)
  %91 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %92 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %91)
  %93 = call i32 @JFFS2_NOTICE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %90, i32 %92)
  %94 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %95 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %96 = call i32 @jffs2_mark_node_obsolete(%struct.jffs2_sb_info* %94, %struct.jffs2_raw_node_ref* %95)
  store i32 0, i32* %4, align 4
  br label %98

97:                                               ; preds = %36, %78, %61, %52
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %86, %12
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i64 @ref_flags(%struct.jffs2_raw_node_ref*) #1

declare dso_local i32 @JFFS2_ERROR(i8*, i32, ...) #1

declare dso_local i32 @ref_offset(%struct.jffs2_raw_node_ref*) #1

declare dso_local i32 @je16_to_cpu(i32) #1

declare dso_local i32 @je32_to_cpu(i32) #1

declare dso_local i32 @jffs2_mark_node_obsolete(%struct.jffs2_sb_info*, %struct.jffs2_raw_node_ref*) #1

declare dso_local i32 @cpu_to_je16(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @JFFS2_NOTICE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
