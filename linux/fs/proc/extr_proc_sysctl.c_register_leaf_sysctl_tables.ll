; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_register_leaf_sysctl_tables.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_register_leaf_sysctl_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table_header = type { %struct.ctl_table* }
%struct.ctl_table_set = type { i32 }
%struct.ctl_table = type { %struct.ctl_table*, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.ctl_table_header***, %struct.ctl_table_set*, %struct.ctl_table*)* @register_leaf_sysctl_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_leaf_sysctl_tables(i8* %0, i8* %1, %struct.ctl_table_header*** %2, %struct.ctl_table_set* %3, %struct.ctl_table* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ctl_table_header***, align 8
  %9 = alloca %struct.ctl_table_set*, align 8
  %10 = alloca %struct.ctl_table*, align 8
  %11 = alloca %struct.ctl_table*, align 8
  %12 = alloca %struct.ctl_table*, align 8
  %13 = alloca %struct.ctl_table*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ctl_table*, align 8
  %18 = alloca %struct.ctl_table_header*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.ctl_table_header*** %2, %struct.ctl_table_header**** %8, align 8
  store %struct.ctl_table_set* %3, %struct.ctl_table_set** %9, align 8
  store %struct.ctl_table* %4, %struct.ctl_table** %10, align 8
  store %struct.ctl_table* null, %struct.ctl_table** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %16, align 4
  %22 = load %struct.ctl_table*, %struct.ctl_table** %10, align 8
  store %struct.ctl_table* %22, %struct.ctl_table** %12, align 8
  br label %23

23:                                               ; preds = %40, %5
  %24 = load %struct.ctl_table*, %struct.ctl_table** %12, align 8
  %25 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load %struct.ctl_table*, %struct.ctl_table** %12, align 8
  %30 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %29, i32 0, i32 0
  %31 = load %struct.ctl_table*, %struct.ctl_table** %30, align 8
  %32 = icmp ne %struct.ctl_table* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %15, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %15, align 4
  br label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %14, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.ctl_table*, %struct.ctl_table** %12, align 8
  %42 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %41, i32 1
  store %struct.ctl_table* %42, %struct.ctl_table** %12, align 8
  br label %23

43:                                               ; preds = %23
  %44 = load %struct.ctl_table*, %struct.ctl_table** %10, align 8
  store %struct.ctl_table* %44, %struct.ctl_table** %13, align 8
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %84

47:                                               ; preds = %43
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %84

50:                                               ; preds = %47
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.ctl_table* @kcalloc(i32 %52, i32 16, i32 %53)
  store %struct.ctl_table* %54, %struct.ctl_table** %13, align 8
  %55 = load %struct.ctl_table*, %struct.ctl_table** %13, align 8
  %56 = icmp ne %struct.ctl_table* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  br label %154

58:                                               ; preds = %50
  %59 = load %struct.ctl_table*, %struct.ctl_table** %13, align 8
  store %struct.ctl_table* %59, %struct.ctl_table** %11, align 8
  %60 = load %struct.ctl_table*, %struct.ctl_table** %13, align 8
  store %struct.ctl_table* %60, %struct.ctl_table** %17, align 8
  %61 = load %struct.ctl_table*, %struct.ctl_table** %10, align 8
  store %struct.ctl_table* %61, %struct.ctl_table** %12, align 8
  br label %62

62:                                               ; preds = %80, %58
  %63 = load %struct.ctl_table*, %struct.ctl_table** %12, align 8
  %64 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load %struct.ctl_table*, %struct.ctl_table** %12, align 8
  %69 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %68, i32 0, i32 0
  %70 = load %struct.ctl_table*, %struct.ctl_table** %69, align 8
  %71 = icmp ne %struct.ctl_table* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %80

73:                                               ; preds = %67
  %74 = load %struct.ctl_table*, %struct.ctl_table** %17, align 8
  %75 = load %struct.ctl_table*, %struct.ctl_table** %12, align 8
  %76 = bitcast %struct.ctl_table* %74 to i8*
  %77 = bitcast %struct.ctl_table* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 16, i1 false)
  %78 = load %struct.ctl_table*, %struct.ctl_table** %17, align 8
  %79 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %78, i32 1
  store %struct.ctl_table* %79, %struct.ctl_table** %17, align 8
  br label %80

80:                                               ; preds = %73, %72
  %81 = load %struct.ctl_table*, %struct.ctl_table** %12, align 8
  %82 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %81, i32 1
  store %struct.ctl_table* %82, %struct.ctl_table** %12, align 8
  br label %62

83:                                               ; preds = %62
  br label %84

84:                                               ; preds = %83, %47, %43
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %110, label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.ctl_table_set*, %struct.ctl_table_set** %9, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load %struct.ctl_table*, %struct.ctl_table** %13, align 8
  %94 = call %struct.ctl_table_header* @__register_sysctl_table(%struct.ctl_table_set* %91, i8* %92, %struct.ctl_table* %93)
  store %struct.ctl_table_header* %94, %struct.ctl_table_header** %18, align 8
  %95 = load %struct.ctl_table_header*, %struct.ctl_table_header** %18, align 8
  %96 = icmp ne %struct.ctl_table_header* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = load %struct.ctl_table*, %struct.ctl_table** %11, align 8
  %99 = call i32 @kfree(%struct.ctl_table* %98)
  br label %154

100:                                              ; preds = %90
  %101 = load %struct.ctl_table*, %struct.ctl_table** %11, align 8
  %102 = load %struct.ctl_table_header*, %struct.ctl_table_header** %18, align 8
  %103 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %102, i32 0, i32 0
  store %struct.ctl_table* %101, %struct.ctl_table** %103, align 8
  %104 = load %struct.ctl_table_header*, %struct.ctl_table_header** %18, align 8
  %105 = load %struct.ctl_table_header***, %struct.ctl_table_header**** %8, align 8
  %106 = load %struct.ctl_table_header**, %struct.ctl_table_header*** %105, align 8
  store %struct.ctl_table_header* %104, %struct.ctl_table_header** %106, align 8
  %107 = load %struct.ctl_table_header***, %struct.ctl_table_header**** %8, align 8
  %108 = load %struct.ctl_table_header**, %struct.ctl_table_header*** %107, align 8
  %109 = getelementptr inbounds %struct.ctl_table_header*, %struct.ctl_table_header** %108, i32 1
  store %struct.ctl_table_header** %109, %struct.ctl_table_header*** %107, align 8
  br label %110

110:                                              ; preds = %100, %87
  %111 = load %struct.ctl_table*, %struct.ctl_table** %10, align 8
  store %struct.ctl_table* %111, %struct.ctl_table** %12, align 8
  br label %112

112:                                              ; preds = %150, %110
  %113 = load %struct.ctl_table*, %struct.ctl_table** %12, align 8
  %114 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %153

117:                                              ; preds = %112
  %118 = load %struct.ctl_table*, %struct.ctl_table** %12, align 8
  %119 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %118, i32 0, i32 0
  %120 = load %struct.ctl_table*, %struct.ctl_table** %119, align 8
  %121 = icmp ne %struct.ctl_table* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  br label %150

123:                                              ; preds = %117
  %124 = load i32, i32* @ENAMETOOLONG, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %16, align 4
  %126 = load i8*, i8** %6, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = load %struct.ctl_table*, %struct.ctl_table** %12, align 8
  %129 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i8* @append_path(i8* %126, i8* %127, i64 %130)
  store i8* %131, i8** %19, align 8
  %132 = load i8*, i8** %19, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %123
  br label %154

135:                                              ; preds = %123
  %136 = load i8*, i8** %6, align 8
  %137 = load i8*, i8** %19, align 8
  %138 = load %struct.ctl_table_header***, %struct.ctl_table_header**** %8, align 8
  %139 = load %struct.ctl_table_set*, %struct.ctl_table_set** %9, align 8
  %140 = load %struct.ctl_table*, %struct.ctl_table** %12, align 8
  %141 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %140, i32 0, i32 0
  %142 = load %struct.ctl_table*, %struct.ctl_table** %141, align 8
  %143 = call i32 @register_leaf_sysctl_tables(i8* %136, i8* %137, %struct.ctl_table_header*** %138, %struct.ctl_table_set* %139, %struct.ctl_table* %142)
  store i32 %143, i32* %16, align 4
  %144 = load i8*, i8** %7, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  store i8 0, i8* %145, align 1
  %146 = load i32, i32* %16, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %135
  br label %154

149:                                              ; preds = %135
  br label %150

150:                                              ; preds = %149, %122
  %151 = load %struct.ctl_table*, %struct.ctl_table** %12, align 8
  %152 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %151, i32 1
  store %struct.ctl_table* %152, %struct.ctl_table** %12, align 8
  br label %112

153:                                              ; preds = %112
  store i32 0, i32* %16, align 4
  br label %154

154:                                              ; preds = %153, %148, %134, %97, %57
  %155 = load i32, i32* %16, align 4
  ret i32 %155
}

declare dso_local %struct.ctl_table* @kcalloc(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.ctl_table_header* @__register_sysctl_table(%struct.ctl_table_set*, i8*, %struct.ctl_table*) #1

declare dso_local i32 @kfree(%struct.ctl_table*) #1

declare dso_local i8* @append_path(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
