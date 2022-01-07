; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c___register_sysctl_table.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c___register_sysctl_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table_header = type { i32 }
%struct.ctl_table_set = type { %struct.ctl_dir }
%struct.ctl_dir = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ctl_table_root* }
%struct.ctl_table_root = type { i32 }
%struct.ctl_table = type { i64 }
%struct.ctl_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@sysctl_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ctl_table_header* @__register_sysctl_table(%struct.ctl_table_set* %0, i8* %1, %struct.ctl_table* %2) #0 {
  %4 = alloca %struct.ctl_table_header*, align 8
  %5 = alloca %struct.ctl_table_set*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ctl_table*, align 8
  %8 = alloca %struct.ctl_table_root*, align 8
  %9 = alloca %struct.ctl_table_header*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ctl_dir*, align 8
  %13 = alloca %struct.ctl_table*, align 8
  %14 = alloca %struct.ctl_node*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ctl_table_set* %0, %struct.ctl_table_set** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ctl_table* %2, %struct.ctl_table** %7, align 8
  %17 = load %struct.ctl_table_set*, %struct.ctl_table_set** %5, align 8
  %18 = getelementptr inbounds %struct.ctl_table_set, %struct.ctl_table_set* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.ctl_table_root*, %struct.ctl_table_root** %20, align 8
  store %struct.ctl_table_root* %21, %struct.ctl_table_root** %8, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  store %struct.ctl_table* %22, %struct.ctl_table** %13, align 8
  br label %23

23:                                               ; preds = %31, %3
  %24 = load %struct.ctl_table*, %struct.ctl_table** %13, align 8
  %25 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* %15, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %15, align 4
  br label %31

31:                                               ; preds = %28
  %32 = load %struct.ctl_table*, %struct.ctl_table** %13, align 8
  %33 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %32, i32 1
  store %struct.ctl_table* %33, %struct.ctl_table** %13, align 8
  br label %23

34:                                               ; preds = %23
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 4, %36
  %38 = add i64 4, %37
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.ctl_table_header* @kzalloc(i32 %39, i32 %40)
  store %struct.ctl_table_header* %41, %struct.ctl_table_header** %9, align 8
  %42 = load %struct.ctl_table_header*, %struct.ctl_table_header** %9, align 8
  %43 = icmp ne %struct.ctl_table_header* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  store %struct.ctl_table_header* null, %struct.ctl_table_header** %4, align 8
  br label %129

45:                                               ; preds = %34
  %46 = load %struct.ctl_table_header*, %struct.ctl_table_header** %9, align 8
  %47 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %46, i64 1
  %48 = bitcast %struct.ctl_table_header* %47 to %struct.ctl_node*
  store %struct.ctl_node* %48, %struct.ctl_node** %14, align 8
  %49 = load %struct.ctl_table_header*, %struct.ctl_table_header** %9, align 8
  %50 = load %struct.ctl_table_root*, %struct.ctl_table_root** %8, align 8
  %51 = load %struct.ctl_table_set*, %struct.ctl_table_set** %5, align 8
  %52 = load %struct.ctl_node*, %struct.ctl_node** %14, align 8
  %53 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %54 = call i32 @init_header(%struct.ctl_table_header* %49, %struct.ctl_table_root* %50, %struct.ctl_table_set* %51, %struct.ctl_node* %52, %struct.ctl_table* %53)
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %57 = call i64 @sysctl_check_table(i8* %55, %struct.ctl_table* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %125

60:                                               ; preds = %45
  %61 = call i32 @spin_lock(i32* @sysctl_lock)
  %62 = load %struct.ctl_table_set*, %struct.ctl_table_set** %5, align 8
  %63 = getelementptr inbounds %struct.ctl_table_set, %struct.ctl_table_set* %62, i32 0, i32 0
  store %struct.ctl_dir* %63, %struct.ctl_dir** %12, align 8
  %64 = load %struct.ctl_dir*, %struct.ctl_dir** %12, align 8
  %65 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = call i32 @spin_unlock(i32* @sysctl_lock)
  %70 = load i8*, i8** %6, align 8
  store i8* %70, i8** %10, align 8
  br label %71

71:                                               ; preds = %105, %60
  %72 = load i8*, i8** %10, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %107

74:                                               ; preds = %71
  %75 = load i8*, i8** %10, align 8
  %76 = call i8* @strchr(i8* %75, i8 signext 47)
  store i8* %76, i8** %11, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load i8*, i8** %11, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %16, align 4
  %86 = load i8*, i8** %11, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %11, align 8
  br label %91

88:                                               ; preds = %74
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 @strlen(i8* %89)
  store i32 %90, i32* %16, align 4
  br label %91

91:                                               ; preds = %88, %79
  %92 = load i32, i32* %16, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %105

95:                                               ; preds = %91
  %96 = load %struct.ctl_dir*, %struct.ctl_dir** %12, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* %16, align 4
  %99 = call %struct.ctl_dir* @get_subdir(%struct.ctl_dir* %96, i8* %97, i32 %98)
  store %struct.ctl_dir* %99, %struct.ctl_dir** %12, align 8
  %100 = load %struct.ctl_dir*, %struct.ctl_dir** %12, align 8
  %101 = call i64 @IS_ERR(%struct.ctl_dir* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %125

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %94
  %106 = load i8*, i8** %11, align 8
  store i8* %106, i8** %10, align 8
  br label %71

107:                                              ; preds = %71
  %108 = call i32 @spin_lock(i32* @sysctl_lock)
  %109 = load %struct.ctl_dir*, %struct.ctl_dir** %12, align 8
  %110 = load %struct.ctl_table_header*, %struct.ctl_table_header** %9, align 8
  %111 = call i64 @insert_header(%struct.ctl_dir* %109, %struct.ctl_table_header* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %120

114:                                              ; preds = %107
  %115 = load %struct.ctl_dir*, %struct.ctl_dir** %12, align 8
  %116 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %115, i32 0, i32 0
  %117 = call i32 @drop_sysctl_table(%struct.TYPE_2__* %116)
  %118 = call i32 @spin_unlock(i32* @sysctl_lock)
  %119 = load %struct.ctl_table_header*, %struct.ctl_table_header** %9, align 8
  store %struct.ctl_table_header* %119, %struct.ctl_table_header** %4, align 8
  br label %129

120:                                              ; preds = %113
  %121 = load %struct.ctl_dir*, %struct.ctl_dir** %12, align 8
  %122 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %121, i32 0, i32 0
  %123 = call i32 @drop_sysctl_table(%struct.TYPE_2__* %122)
  %124 = call i32 @spin_unlock(i32* @sysctl_lock)
  br label %125

125:                                              ; preds = %120, %103, %59
  %126 = load %struct.ctl_table_header*, %struct.ctl_table_header** %9, align 8
  %127 = call i32 @kfree(%struct.ctl_table_header* %126)
  %128 = call i32 (...) @dump_stack()
  store %struct.ctl_table_header* null, %struct.ctl_table_header** %4, align 8
  br label %129

129:                                              ; preds = %125, %114, %44
  %130 = load %struct.ctl_table_header*, %struct.ctl_table_header** %4, align 8
  ret %struct.ctl_table_header* %130
}

declare dso_local %struct.ctl_table_header* @kzalloc(i32, i32) #1

declare dso_local i32 @init_header(%struct.ctl_table_header*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_node*, %struct.ctl_table*) #1

declare dso_local i64 @sysctl_check_table(i8*, %struct.ctl_table*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.ctl_dir* @get_subdir(%struct.ctl_dir*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ctl_dir*) #1

declare dso_local i64 @insert_header(%struct.ctl_dir*, %struct.ctl_table_header*) #1

declare dso_local i32 @drop_sysctl_table(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.ctl_table_header*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
