; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_new_links.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_new_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table_header = type { i32 }
%struct.ctl_dir = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ctl_table = type { i8*, i32, %struct.ctl_table_root* }
%struct.ctl_table_root = type { i32 }
%struct.ctl_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ctl_table_header* (%struct.ctl_dir*, %struct.ctl_table*, %struct.ctl_table_root*)* @new_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ctl_table_header* @new_links(%struct.ctl_dir* %0, %struct.ctl_table* %1, %struct.ctl_table_root* %2) #0 {
  %4 = alloca %struct.ctl_table_header*, align 8
  %5 = alloca %struct.ctl_dir*, align 8
  %6 = alloca %struct.ctl_table*, align 8
  %7 = alloca %struct.ctl_table_root*, align 8
  %8 = alloca %struct.ctl_table*, align 8
  %9 = alloca %struct.ctl_table*, align 8
  %10 = alloca %struct.ctl_table*, align 8
  %11 = alloca %struct.ctl_table_header*, align 8
  %12 = alloca %struct.ctl_node*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ctl_dir* %0, %struct.ctl_dir** %5, align 8
  store %struct.ctl_table* %1, %struct.ctl_table** %6, align 8
  store %struct.ctl_table_root* %2, %struct.ctl_table_root** %7, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  store %struct.ctl_table* %17, %struct.ctl_table** %9, align 8
  br label %18

18:                                               ; preds = %33, %3
  %19 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %20 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load i32, i32* %14, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %14, align 4
  %26 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %27 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %15, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %15, align 4
  br label %33

33:                                               ; preds = %23
  %34 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %35 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %34, i32 1
  store %struct.ctl_table* %35, %struct.ctl_table** %9, align 8
  br label %18

36:                                               ; preds = %18
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = add i64 4, %39
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = mul i64 24, %43
  %45 = add i64 %40, %44
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %45, %47
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.ctl_table_header* @kzalloc(i32 %49, i32 %50)
  store %struct.ctl_table_header* %51, %struct.ctl_table_header** %11, align 8
  %52 = load %struct.ctl_table_header*, %struct.ctl_table_header** %11, align 8
  %53 = icmp ne %struct.ctl_table_header* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %36
  store %struct.ctl_table_header* null, %struct.ctl_table_header** %4, align 8
  br label %126

55:                                               ; preds = %36
  %56 = load %struct.ctl_table_header*, %struct.ctl_table_header** %11, align 8
  %57 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %56, i64 1
  %58 = bitcast %struct.ctl_table_header* %57 to %struct.ctl_node*
  store %struct.ctl_node* %58, %struct.ctl_node** %12, align 8
  %59 = load %struct.ctl_node*, %struct.ctl_node** %12, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ctl_node, %struct.ctl_node* %59, i64 %61
  %63 = bitcast %struct.ctl_node* %62 to %struct.ctl_table*
  store %struct.ctl_table* %63, %struct.ctl_table** %8, align 8
  %64 = load %struct.ctl_table*, %struct.ctl_table** %8, align 8
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %64, i64 %67
  %69 = bitcast %struct.ctl_table* %68 to i8*
  store i8* %69, i8** %13, align 8
  %70 = load %struct.ctl_table*, %struct.ctl_table** %8, align 8
  store %struct.ctl_table* %70, %struct.ctl_table** %10, align 8
  %71 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  store %struct.ctl_table* %71, %struct.ctl_table** %9, align 8
  br label %72

72:                                               ; preds = %104, %55
  %73 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %74 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %109

77:                                               ; preds = %72
  %78 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %79 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %16, align 4
  %83 = load i8*, i8** %13, align 8
  %84 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %85 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @memcpy(i8* %83, i8* %86, i32 %87)
  %89 = load i8*, i8** %13, align 8
  %90 = load %struct.ctl_table*, %struct.ctl_table** %10, align 8
  %91 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* @S_IFLNK, align 4
  %93 = load i32, i32* @S_IRWXUGO, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.ctl_table*, %struct.ctl_table** %10, align 8
  %96 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load %struct.ctl_table_root*, %struct.ctl_table_root** %7, align 8
  %98 = load %struct.ctl_table*, %struct.ctl_table** %10, align 8
  %99 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %98, i32 0, i32 2
  store %struct.ctl_table_root* %97, %struct.ctl_table_root** %99, align 8
  %100 = load i32, i32* %16, align 4
  %101 = load i8*, i8** %13, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %13, align 8
  br label %104

104:                                              ; preds = %77
  %105 = load %struct.ctl_table*, %struct.ctl_table** %10, align 8
  %106 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %105, i32 1
  store %struct.ctl_table* %106, %struct.ctl_table** %10, align 8
  %107 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %108 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %107, i32 1
  store %struct.ctl_table* %108, %struct.ctl_table** %9, align 8
  br label %72

109:                                              ; preds = %72
  %110 = load %struct.ctl_table_header*, %struct.ctl_table_header** %11, align 8
  %111 = load %struct.ctl_dir*, %struct.ctl_dir** %5, align 8
  %112 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ctl_dir*, %struct.ctl_dir** %5, align 8
  %116 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ctl_node*, %struct.ctl_node** %12, align 8
  %120 = load %struct.ctl_table*, %struct.ctl_table** %8, align 8
  %121 = call i32 @init_header(%struct.ctl_table_header* %110, i32 %114, i32 %118, %struct.ctl_node* %119, %struct.ctl_table* %120)
  %122 = load i32, i32* %14, align 4
  %123 = load %struct.ctl_table_header*, %struct.ctl_table_header** %11, align 8
  %124 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load %struct.ctl_table_header*, %struct.ctl_table_header** %11, align 8
  store %struct.ctl_table_header* %125, %struct.ctl_table_header** %4, align 8
  br label %126

126:                                              ; preds = %109, %54
  %127 = load %struct.ctl_table_header*, %struct.ctl_table_header** %4, align 8
  ret %struct.ctl_table_header* %127
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.ctl_table_header* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @init_header(%struct.ctl_table_header*, i32, i32, %struct.ctl_node*, %struct.ctl_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
