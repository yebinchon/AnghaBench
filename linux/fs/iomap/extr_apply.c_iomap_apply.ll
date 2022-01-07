; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_apply.c_iomap_apply.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_apply.c_iomap_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iomap_ops = type { i64 (%struct.inode.0*, i64, i64, i32, %struct.iomap*)*, i64 (%struct.inode.1*, i64, i64, i64, i32, %struct.iomap.2*)* }
%struct.inode.0 = type opaque
%struct.iomap = type opaque
%struct.inode.1 = type opaque
%struct.iomap.2 = type opaque
%struct.iomap.3 = type { i64, i64, i32 }

@EIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @iomap_apply(%struct.inode* %0, i64 %1, i64 %2, i32 %3, %struct.iomap_ops* %4, i8* %5, i64 (%struct.inode*, i64, i64, i8*, %struct.iomap.3*)* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iomap_ops*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64 (%struct.inode*, i64, i64, i8*, %struct.iomap.3*)*, align 8
  %16 = alloca %struct.iomap.3, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.iomap_ops* %4, %struct.iomap_ops** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 (%struct.inode*, i64, i64, i8*, %struct.iomap.3*)* %6, i64 (%struct.inode*, i64, i64, i8*, %struct.iomap.3*)** %15, align 8
  %19 = bitcast %struct.iomap.3* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 24, i1 false)
  store i64 0, i64* %17, align 8
  %20 = load %struct.iomap_ops*, %struct.iomap_ops** %13, align 8
  %21 = getelementptr inbounds %struct.iomap_ops, %struct.iomap_ops* %20, i32 0, i32 0
  %22 = load i64 (%struct.inode.0*, i64, i64, i32, %struct.iomap*)*, i64 (%struct.inode.0*, i64, i64, i32, %struct.iomap*)** %21, align 8
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = bitcast %struct.inode* %23 to %struct.inode.0*
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = bitcast %struct.iomap.3* %16 to %struct.iomap*
  %29 = call i64 %22(%struct.inode.0* %24, i64 %25, i64 %26, i32 %27, %struct.iomap* %28)
  store i64 %29, i64* %18, align 8
  %30 = load i64, i64* %18, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %7
  %33 = load i64, i64* %18, align 8
  store i64 %33, i64* %8, align 8
  br label %111

34:                                               ; preds = %7
  %35 = getelementptr inbounds %struct.iomap.3, %struct.iomap.3* %16, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp sgt i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i64, i64* @EIO, align 8
  %44 = sub nsw i64 0, %43
  store i64 %44, i64* %8, align 8
  br label %111

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.iomap.3, %struct.iomap.3* %16, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i64 @WARN_ON(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i64, i64* @EIO, align 8
  %54 = sub nsw i64 0, %53
  store i64 %54, i64* %8, align 8
  br label %111

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.iomap.3, %struct.iomap.3* %16, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.iomap.3, %struct.iomap.3* %16, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %57, %59
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = add nsw i64 %61, %62
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.iomap.3, %struct.iomap.3* %16, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.iomap.3, %struct.iomap.3* %16, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %67, %69
  %71 = load i64, i64* %10, align 8
  %72 = sub nsw i64 %70, %71
  store i64 %72, i64* %11, align 8
  br label %73

73:                                               ; preds = %65, %55
  %74 = load i64 (%struct.inode*, i64, i64, i8*, %struct.iomap.3*)*, i64 (%struct.inode*, i64, i64, i8*, %struct.iomap.3*)** %15, align 8
  %75 = load %struct.inode*, %struct.inode** %9, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = call i64 %74(%struct.inode* %75, i64 %76, i64 %77, i8* %78, %struct.iomap.3* %16)
  store i64 %79, i64* %17, align 8
  %80 = load %struct.iomap_ops*, %struct.iomap_ops** %13, align 8
  %81 = getelementptr inbounds %struct.iomap_ops, %struct.iomap_ops* %80, i32 0, i32 1
  %82 = load i64 (%struct.inode.1*, i64, i64, i64, i32, %struct.iomap.2*)*, i64 (%struct.inode.1*, i64, i64, i64, i32, %struct.iomap.2*)** %81, align 8
  %83 = icmp ne i64 (%struct.inode.1*, i64, i64, i64, i32, %struct.iomap.2*)* %82, null
  br i1 %83, label %84, label %102

84:                                               ; preds = %73
  %85 = load %struct.iomap_ops*, %struct.iomap_ops** %13, align 8
  %86 = getelementptr inbounds %struct.iomap_ops, %struct.iomap_ops* %85, i32 0, i32 1
  %87 = load i64 (%struct.inode.1*, i64, i64, i64, i32, %struct.iomap.2*)*, i64 (%struct.inode.1*, i64, i64, i64, i32, %struct.iomap.2*)** %86, align 8
  %88 = load %struct.inode*, %struct.inode** %9, align 8
  %89 = bitcast %struct.inode* %88 to %struct.inode.1*
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %17, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i64, i64* %17, align 8
  br label %97

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i64 [ %95, %94 ], [ 0, %96 ]
  %99 = load i32, i32* %12, align 4
  %100 = bitcast %struct.iomap.3* %16 to %struct.iomap.2*
  %101 = call i64 %87(%struct.inode.1* %89, i64 %90, i64 %91, i64 %98, i32 %99, %struct.iomap.2* %100)
  store i64 %101, i64* %18, align 8
  br label %102

102:                                              ; preds = %97, %73
  %103 = load i64, i64* %17, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i64, i64* %17, align 8
  br label %109

107:                                              ; preds = %102
  %108 = load i64, i64* %18, align 8
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i64 [ %106, %105 ], [ %108, %107 ]
  store i64 %110, i64* %8, align 8
  br label %111

111:                                              ; preds = %109, %52, %42, %32
  %112 = load i64, i64* %8, align 8
  ret i64 %112
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @WARN_ON(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
