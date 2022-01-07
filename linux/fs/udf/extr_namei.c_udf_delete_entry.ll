; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_delete_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_udf_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.udf_fileident_bh = type { i32 }
%struct.fileIdentDesc = type { i32, i32 }

@FID_FILE_CHAR_DELETED = common dso_local global i32 0, align 4
@UDF_FLAG_STRICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*)* @udf_delete_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_delete_entry(%struct.inode* %0, %struct.fileIdentDesc* %1, %struct.udf_fileident_bh* %2, %struct.fileIdentDesc* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.fileIdentDesc*, align 8
  %7 = alloca %struct.udf_fileident_bh*, align 8
  %8 = alloca %struct.fileIdentDesc*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.fileIdentDesc* %1, %struct.fileIdentDesc** %6, align 8
  store %struct.udf_fileident_bh* %2, %struct.udf_fileident_bh** %7, align 8
  store %struct.fileIdentDesc* %3, %struct.fileIdentDesc** %8, align 8
  %9 = load i32, i32* @FID_FILE_CHAR_DELETED, align 4
  %10 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %11 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @UDF_FLAG_STRICT, align 4
  %18 = call i64 @UDF_QUERY_FLAG(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %22 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %21, i32 0, i32 0
  %23 = call i32 @memset(i32* %22, i32 0, i32 4)
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %8, align 8
  %27 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %6, align 8
  %28 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %7, align 8
  %29 = call i32 @udf_write_fi(%struct.inode* %25, %struct.fileIdentDesc* %26, %struct.fileIdentDesc* %27, %struct.udf_fileident_bh* %28, i32* null, i32* null)
  ret i32 %29
}

declare dso_local i64 @UDF_QUERY_FLAG(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @udf_write_fi(%struct.inode*, %struct.fileIdentDesc*, %struct.fileIdentDesc*, %struct.udf_fileident_bh*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
