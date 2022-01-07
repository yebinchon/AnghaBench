; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_pre_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_pre_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_ops = type { i32 }
%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.devlink_sb** }
%struct.devlink_sb = type { i32 }
%struct.devlink = type { i32 }
%struct.devlink_port = type { i32 }

@devlink_mutex = common dso_local global i32 0, align 4
@DEVLINK_NL_FLAG_NO_LOCK = common dso_local global i32 0, align 4
@DEVLINK_NL_FLAG_NEED_DEVLINK = common dso_local global i32 0, align 4
@DEVLINK_NL_FLAG_NEED_PORT = common dso_local global i32 0, align 4
@DEVLINK_NL_FLAG_NEED_SB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_ops*, %struct.sk_buff*, %struct.genl_info*)* @devlink_nl_pre_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_pre_doit(%struct.genl_ops* %0, %struct.sk_buff* %1, %struct.genl_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.genl_ops*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.genl_info*, align 8
  %8 = alloca %struct.devlink*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.devlink_port*, align 8
  %11 = alloca %struct.devlink_sb*, align 8
  store %struct.genl_ops* %0, %struct.genl_ops** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.genl_info* %2, %struct.genl_info** %7, align 8
  %12 = call i32 @mutex_lock(i32* @devlink_mutex)
  %13 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %14 = call %struct.devlink_sb* @devlink_get_from_info(%struct.genl_info* %13)
  %15 = bitcast %struct.devlink_sb* %14 to %struct.devlink*
  store %struct.devlink* %15, %struct.devlink** %8, align 8
  %16 = load %struct.devlink*, %struct.devlink** %8, align 8
  %17 = bitcast %struct.devlink* %16 to %struct.devlink_sb*
  %18 = call i64 @IS_ERR(%struct.devlink_sb* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = call i32 @mutex_unlock(i32* @devlink_mutex)
  %22 = load %struct.devlink*, %struct.devlink** %8, align 8
  %23 = bitcast %struct.devlink* %22 to %struct.devlink_sb*
  %24 = call i32 @PTR_ERR(%struct.devlink_sb* %23)
  store i32 %24, i32* %4, align 4
  br label %120

25:                                               ; preds = %3
  %26 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %27 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* @DEVLINK_NL_FLAG_NO_LOCK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.devlink*, %struct.devlink** %8, align 8
  %35 = getelementptr inbounds %struct.devlink, %struct.devlink* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  br label %37

37:                                               ; preds = %33, %25
  %38 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %39 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DEVLINK_NL_FLAG_NEED_DEVLINK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.devlink*, %struct.devlink** %8, align 8
  %46 = bitcast %struct.devlink* %45 to %struct.devlink_sb*
  %47 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %48 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %47, i32 0, i32 0
  %49 = load %struct.devlink_sb**, %struct.devlink_sb*** %48, align 8
  %50 = getelementptr inbounds %struct.devlink_sb*, %struct.devlink_sb** %49, i64 0
  store %struct.devlink_sb* %46, %struct.devlink_sb** %50, align 8
  br label %80

51:                                               ; preds = %37
  %52 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %53 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DEVLINK_NL_FLAG_NEED_PORT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %51
  %59 = load %struct.devlink*, %struct.devlink** %8, align 8
  %60 = bitcast %struct.devlink* %59 to %struct.devlink_sb*
  %61 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %62 = call %struct.devlink_sb* @devlink_port_get_from_info(%struct.devlink_sb* %60, %struct.genl_info* %61)
  %63 = bitcast %struct.devlink_sb* %62 to %struct.devlink_port*
  store %struct.devlink_port* %63, %struct.devlink_port** %10, align 8
  %64 = load %struct.devlink_port*, %struct.devlink_port** %10, align 8
  %65 = bitcast %struct.devlink_port* %64 to %struct.devlink_sb*
  %66 = call i64 @IS_ERR(%struct.devlink_sb* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load %struct.devlink_port*, %struct.devlink_port** %10, align 8
  %70 = bitcast %struct.devlink_port* %69 to %struct.devlink_sb*
  %71 = call i32 @PTR_ERR(%struct.devlink_sb* %70)
  store i32 %71, i32* %9, align 4
  br label %105

72:                                               ; preds = %58
  %73 = load %struct.devlink_port*, %struct.devlink_port** %10, align 8
  %74 = bitcast %struct.devlink_port* %73 to %struct.devlink_sb*
  %75 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %76 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %75, i32 0, i32 0
  %77 = load %struct.devlink_sb**, %struct.devlink_sb*** %76, align 8
  %78 = getelementptr inbounds %struct.devlink_sb*, %struct.devlink_sb** %77, i64 0
  store %struct.devlink_sb* %74, %struct.devlink_sb** %78, align 8
  br label %79

79:                                               ; preds = %72, %51
  br label %80

80:                                               ; preds = %79, %44
  %81 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %82 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @DEVLINK_NL_FLAG_NEED_SB, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %80
  %88 = load %struct.devlink*, %struct.devlink** %8, align 8
  %89 = bitcast %struct.devlink* %88 to %struct.devlink_sb*
  %90 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %91 = call %struct.devlink_sb* @devlink_sb_get_from_info(%struct.devlink_sb* %89, %struct.genl_info* %90)
  store %struct.devlink_sb* %91, %struct.devlink_sb** %11, align 8
  %92 = load %struct.devlink_sb*, %struct.devlink_sb** %11, align 8
  %93 = call i64 @IS_ERR(%struct.devlink_sb* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load %struct.devlink_sb*, %struct.devlink_sb** %11, align 8
  %97 = call i32 @PTR_ERR(%struct.devlink_sb* %96)
  store i32 %97, i32* %9, align 4
  br label %105

98:                                               ; preds = %87
  %99 = load %struct.devlink_sb*, %struct.devlink_sb** %11, align 8
  %100 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %101 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %100, i32 0, i32 0
  %102 = load %struct.devlink_sb**, %struct.devlink_sb*** %101, align 8
  %103 = getelementptr inbounds %struct.devlink_sb*, %struct.devlink_sb** %102, i64 1
  store %struct.devlink_sb* %99, %struct.devlink_sb** %103, align 8
  br label %104

104:                                              ; preds = %98, %80
  store i32 0, i32* %4, align 4
  br label %120

105:                                              ; preds = %95, %68
  %106 = load %struct.genl_ops*, %struct.genl_ops** %5, align 8
  %107 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* @DEVLINK_NL_FLAG_NO_LOCK, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load %struct.devlink*, %struct.devlink** %8, align 8
  %115 = getelementptr inbounds %struct.devlink, %struct.devlink* %114, i32 0, i32 0
  %116 = call i32 @mutex_unlock(i32* %115)
  br label %117

117:                                              ; preds = %113, %105
  %118 = call i32 @mutex_unlock(i32* @devlink_mutex)
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %117, %104, %20
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.devlink_sb* @devlink_get_from_info(%struct.genl_info*) #1

declare dso_local i64 @IS_ERR(%struct.devlink_sb*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @PTR_ERR(%struct.devlink_sb*) #1

declare dso_local %struct.devlink_sb* @devlink_port_get_from_info(%struct.devlink_sb*, %struct.genl_info*) #1

declare dso_local %struct.devlink_sb* @devlink_sb_get_from_info(%struct.devlink_sb*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
