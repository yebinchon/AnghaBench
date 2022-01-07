; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_genetlink.c_genl_register_family.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_genetlink.c_genl_register_family.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_family = type { i32, i32, i32*, i64, i32*, i64, i32, i32 }

@GENL_START_ALLOC = common dso_local global i32 0, align 4
@GENL_MAX_ID = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@genl_ctrl = common dso_local global %struct.genl_family zeroinitializer, align 8
@GENL_ID_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"pmcraid\00", align 1
@GENL_ID_PMCRAID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"VFS_DQUOT\00", align 1
@GENL_ID_VFS_DQUOT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@genl_fam_idr = common dso_local global i32 0, align 4
@CTRL_CMD_NEWFAMILY = common dso_local global i32 0, align 4
@CTRL_CMD_NEWMCAST_GRP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genl_register_family(%struct.genl_family* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.genl_family*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.genl_family* %0, %struct.genl_family** %3, align 8
  %8 = load i32, i32* @GENL_START_ALLOC, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @GENL_MAX_ID, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %11 = call i32 @genl_validate_ops(%struct.genl_family* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %146

16:                                               ; preds = %1
  %17 = call i32 (...) @genl_lock_all()
  %18 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %19 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @genl_family_find_byname(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EEXIST, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %143

26:                                               ; preds = %16
  %27 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %28 = icmp eq %struct.genl_family* %27, @genl_ctrl
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @GENL_ID_CTRL, align 4
  store i32 %30, i32* %7, align 4
  store i32 %30, i32* %6, align 4
  br label %49

31:                                               ; preds = %26
  %32 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %33 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @strcmp(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @GENL_ID_PMCRAID, align 4
  store i32 %38, i32* %7, align 4
  store i32 %38, i32* %6, align 4
  br label %48

39:                                               ; preds = %31
  %40 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %41 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @strcmp(i32 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @GENL_ID_VFS_DQUOT, align 4
  store i32 %46, i32* %7, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %39
  br label %48

48:                                               ; preds = %47, %37
  br label %49

49:                                               ; preds = %48, %29
  %50 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %51 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %49
  %55 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %56 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %54
  %60 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %61 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i32* @kmalloc_array(i64 %63, i32 8, i32 %64)
  %66 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %67 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %66, i32 0, i32 2
  store i32* %65, i32** %67, align 8
  %68 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %69 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %59
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %143

75:                                               ; preds = %59
  br label %79

76:                                               ; preds = %54, %49
  %77 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %78 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %77, i32 0, i32 2
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %76, %75
  %80 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i32 @idr_alloc_cyclic(i32* @genl_fam_idr, %struct.genl_family* %80, i32 %81, i32 %83, i32 %84)
  %86 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %87 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %89 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %79
  %93 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %94 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %4, align 4
  br label %138

96:                                               ; preds = %79
  %97 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %98 = call i32 @genl_validate_assign_mc_groups(%struct.genl_family* %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %133

102:                                              ; preds = %96
  %103 = call i32 (...) @genl_unlock_all()
  %104 = load i32, i32* @CTRL_CMD_NEWFAMILY, align 4
  %105 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %106 = call i32 @genl_ctrl_event(i32 %104, %struct.genl_family* %105, i32* null, i64 0)
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %129, %102
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %110 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %132

113:                                              ; preds = %107
  %114 = load i32, i32* @CTRL_CMD_NEWMCAST_GRP, align 4
  %115 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %116 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %117 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %116, i32 0, i32 4
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %123 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %124, %126
  %128 = call i32 @genl_ctrl_event(i32 %114, %struct.genl_family* %115, i32* %121, i64 %127)
  br label %129

129:                                              ; preds = %113
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %5, align 4
  br label %107

132:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %146

133:                                              ; preds = %101
  %134 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %135 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @idr_remove(i32* @genl_fam_idr, i32 %136)
  br label %138

138:                                              ; preds = %133, %92
  %139 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %140 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @kfree(i32* %141)
  br label %143

143:                                              ; preds = %138, %72, %23
  %144 = call i32 (...) @genl_unlock_all()
  %145 = load i32, i32* %4, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %143, %132, %14
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @genl_validate_ops(%struct.genl_family*) #1

declare dso_local i32 @genl_lock_all(...) #1

declare dso_local i64 @genl_family_find_byname(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32* @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @idr_alloc_cyclic(i32*, %struct.genl_family*, i32, i32, i32) #1

declare dso_local i32 @genl_validate_assign_mc_groups(%struct.genl_family*) #1

declare dso_local i32 @genl_unlock_all(...) #1

declare dso_local i32 @genl_ctrl_event(i32, %struct.genl_family*, i32*, i64) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
