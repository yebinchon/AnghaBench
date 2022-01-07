; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_rename_dir_finish.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_rename_dir_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_renament = type { %struct.TYPE_3__*, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ext4_renament*, i32)* @ext4_rename_dir_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_rename_dir_finish(i32* %0, %struct.ext4_renament* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ext4_renament*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.ext4_renament* %1, %struct.ext4_renament** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call i32 @cpu_to_le32(i32 %9)
  %11 = load %struct.ext4_renament*, %struct.ext4_renament** %6, align 8
  %12 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %10, i32* %14, align 4
  %15 = load %struct.ext4_renament*, %struct.ext4_renament** %6, align 8
  %16 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BUFFER_TRACE(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ext4_renament*, %struct.ext4_renament** %6, align 8
  %20 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %48, label %23

23:                                               ; preds = %3
  %24 = load %struct.ext4_renament*, %struct.ext4_renament** %6, align 8
  %25 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @is_dx(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.ext4_renament*, %struct.ext4_renament** %6, align 8
  %32 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ext4_renament*, %struct.ext4_renament** %6, align 8
  %35 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ext4_handle_dirty_dx_node(i32* %30, i32 %33, i32 %36)
  store i32 %37, i32* %8, align 4
  br label %47

38:                                               ; preds = %23
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.ext4_renament*, %struct.ext4_renament** %6, align 8
  %41 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ext4_renament*, %struct.ext4_renament** %6, align 8
  %44 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ext4_handle_dirty_dirblock(i32* %39, i32 %42, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %38, %29
  br label %54

48:                                               ; preds = %3
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.ext4_renament*, %struct.ext4_renament** %6, align 8
  %51 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ext4_mark_inode_dirty(i32* %49, i32 %52)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %48, %47
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load %struct.ext4_renament*, %struct.ext4_renament** %6, align 8
  %59 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @ext4_std_error(i32 %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %67

66:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %57
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @BUFFER_TRACE(i32, i8*) #1

declare dso_local i64 @is_dx(i32) #1

declare dso_local i32 @ext4_handle_dirty_dx_node(i32*, i32, i32) #1

declare dso_local i32 @ext4_handle_dirty_dirblock(i32*, i32, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, i32) #1

declare dso_local i32 @ext4_std_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
