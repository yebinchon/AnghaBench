; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mpol_new.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mpol_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempolicy = type { i16, i16, i32 }

@.str = private unnamed_addr constant [39 x i8] c"setting mode %d flags %d nodes[0] %lx\0A\00", align 1
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@MPOL_DEFAULT = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@MPOL_PREFERRED = common dso_local global i16 0, align 2
@MPOL_F_STATIC_NODES = common dso_local global i16 0, align 2
@MPOL_F_RELATIVE_NODES = common dso_local global i16 0, align 2
@MPOL_LOCAL = common dso_local global i16 0, align 2
@policy_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mempolicy* (i16, i16, i32*)* @mpol_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mempolicy* @mpol_new(i16 zeroext %0, i16 zeroext %1, i32* %2) #0 {
  %4 = alloca %struct.mempolicy*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mempolicy*, align 8
  store i16 %0, i16* %5, align 2
  store i16 %1, i16* %6, align 2
  store i32* %2, i32** %7, align 8
  %9 = load i16, i16* %5, align 2
  %10 = load i16, i16* %6, align 2
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @nodes_addr(i32 %15)
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @NUMA_NO_NODE, align 4
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi i32 [ %18, %13 ], [ %20, %19 ]
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i16 zeroext %9, i16 zeroext %10, i32 %22)
  %24 = load i16, i16* %5, align 2
  %25 = zext i16 %24 to i32
  %26 = load i16, i16* @MPOL_DEFAULT, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %21
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @nodes_empty(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.mempolicy* @ERR_PTR(i32 %39)
  store %struct.mempolicy* %40, %struct.mempolicy** %4, align 8
  br label %141

41:                                               ; preds = %32, %29
  store %struct.mempolicy* null, %struct.mempolicy** %4, align 8
  br label %141

42:                                               ; preds = %21
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @VM_BUG_ON(i32 %46)
  %48 = load i16, i16* %5, align 2
  %49 = zext i16 %48 to i32
  %50 = load i16, i16* @MPOL_PREFERRED, align 2
  %51 = zext i16 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %78

53:                                               ; preds = %42
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @nodes_empty(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %53
  %59 = load i16, i16* %6, align 2
  %60 = zext i16 %59 to i32
  %61 = load i16, i16* @MPOL_F_STATIC_NODES, align 2
  %62 = zext i16 %61 to i32
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = load i16, i16* %6, align 2
  %67 = zext i16 %66 to i32
  %68 = load i16, i16* @MPOL_F_RELATIVE_NODES, align 2
  %69 = zext i16 %68 to i32
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65, %58
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  %75 = call %struct.mempolicy* @ERR_PTR(i32 %74)
  store %struct.mempolicy* %75, %struct.mempolicy** %4, align 8
  br label %141

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %53
  br label %120

78:                                               ; preds = %42
  %79 = load i16, i16* %5, align 2
  %80 = zext i16 %79 to i32
  %81 = load i16, i16* @MPOL_LOCAL, align 2
  %82 = zext i16 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %109

84:                                               ; preds = %78
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @nodes_empty(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %84
  %90 = load i16, i16* %6, align 2
  %91 = zext i16 %90 to i32
  %92 = load i16, i16* @MPOL_F_STATIC_NODES, align 2
  %93 = zext i16 %92 to i32
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %89
  %97 = load i16, i16* %6, align 2
  %98 = zext i16 %97 to i32
  %99 = load i16, i16* @MPOL_F_RELATIVE_NODES, align 2
  %100 = zext i16 %99 to i32
  %101 = and i32 %98, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96, %89, %84
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  %106 = call %struct.mempolicy* @ERR_PTR(i32 %105)
  store %struct.mempolicy* %106, %struct.mempolicy** %4, align 8
  br label %141

107:                                              ; preds = %96
  %108 = load i16, i16* @MPOL_PREFERRED, align 2
  store i16 %108, i16* %5, align 2
  br label %119

109:                                              ; preds = %78
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @nodes_empty(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  %117 = call %struct.mempolicy* @ERR_PTR(i32 %116)
  store %struct.mempolicy* %117, %struct.mempolicy** %4, align 8
  br label %141

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %107
  br label %120

120:                                              ; preds = %119, %77
  %121 = load i32, i32* @policy_cache, align 4
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call %struct.mempolicy* @kmem_cache_alloc(i32 %121, i32 %122)
  store %struct.mempolicy* %123, %struct.mempolicy** %8, align 8
  %124 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %125 = icmp ne %struct.mempolicy* %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %120
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  %129 = call %struct.mempolicy* @ERR_PTR(i32 %128)
  store %struct.mempolicy* %129, %struct.mempolicy** %4, align 8
  br label %141

130:                                              ; preds = %120
  %131 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %132 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %131, i32 0, i32 2
  %133 = call i32 @atomic_set(i32* %132, i32 1)
  %134 = load i16, i16* %5, align 2
  %135 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %136 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %135, i32 0, i32 0
  store i16 %134, i16* %136, align 4
  %137 = load i16, i16* %6, align 2
  %138 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %139 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %138, i32 0, i32 1
  store i16 %137, i16* %139, align 2
  %140 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  store %struct.mempolicy* %140, %struct.mempolicy** %4, align 8
  br label %141

141:                                              ; preds = %130, %126, %114, %103, %72, %41, %37
  %142 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  ret %struct.mempolicy* %142
}

declare dso_local i32 @pr_debug(i8*, i16 zeroext, i16 zeroext, i32) #1

declare dso_local i32* @nodes_addr(i32) #1

declare dso_local i64 @nodes_empty(i32) #1

declare dso_local %struct.mempolicy* @ERR_PTR(i32) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local %struct.mempolicy* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
