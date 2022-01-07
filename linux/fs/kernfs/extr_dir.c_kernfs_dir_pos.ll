; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_dir_pos.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_dir_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i64, i8*, i32, %struct.TYPE_4__, %struct.kernfs_node* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }

@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kernfs_node* (i8*, %struct.kernfs_node*, i64, %struct.kernfs_node*)* @kernfs_dir_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kernfs_node* @kernfs_dir_pos(i8* %0, %struct.kernfs_node* %1, i64 %2, %struct.kernfs_node* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kernfs_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rb_node*, align 8
  %11 = alloca %struct.rb_node*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.kernfs_node* %1, %struct.kernfs_node** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.kernfs_node* %3, %struct.kernfs_node** %8, align 8
  %12 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %13 = icmp ne %struct.kernfs_node* %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %4
  %15 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %16 = call i64 @kernfs_active(%struct.kernfs_node* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %20 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %19, i32 0, i32 4
  %21 = load %struct.kernfs_node*, %struct.kernfs_node** %20, align 8
  %22 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %23 = icmp eq %struct.kernfs_node* %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %27 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br label %30

30:                                               ; preds = %24, %18, %14
  %31 = phi i1 [ false, %18 ], [ false, %14 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %34 = call i32 @kernfs_put(%struct.kernfs_node* %33)
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  store %struct.kernfs_node* null, %struct.kernfs_node** %8, align 8
  br label %38

38:                                               ; preds = %37, %30
  br label %39

39:                                               ; preds = %38, %4
  %40 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %41 = icmp ne %struct.kernfs_node* %40, null
  br i1 %41, label %84, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %7, align 8
  %44 = icmp sgt i64 %43, 1
  br i1 %44, label %45, label %84

45:                                               ; preds = %42
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @INT_MAX, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %84

49:                                               ; preds = %45
  %50 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %51 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.rb_node*, %struct.rb_node** %53, align 8
  store %struct.rb_node* %54, %struct.rb_node** %10, align 8
  br label %55

55:                                               ; preds = %82, %49
  %56 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %57 = icmp ne %struct.rb_node* %56, null
  br i1 %57, label %58, label %83

58:                                               ; preds = %55
  %59 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %60 = call %struct.kernfs_node* @rb_to_kn(%struct.rb_node* %59)
  store %struct.kernfs_node* %60, %struct.kernfs_node** %8, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %63 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %68 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %67, i32 0, i32 1
  %69 = load %struct.rb_node*, %struct.rb_node** %68, align 8
  store %struct.rb_node* %69, %struct.rb_node** %10, align 8
  br label %82

70:                                               ; preds = %58
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %73 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %71, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %78 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %77, i32 0, i32 0
  %79 = load %struct.rb_node*, %struct.rb_node** %78, align 8
  store %struct.rb_node* %79, %struct.rb_node** %10, align 8
  br label %81

80:                                               ; preds = %70
  br label %83

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %66
  br label %55

83:                                               ; preds = %80, %55
  br label %84

84:                                               ; preds = %83, %45, %42, %39
  br label %85

85:                                               ; preds = %112, %84
  %86 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %87 = icmp ne %struct.kernfs_node* %86, null
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %90 = call i64 @kernfs_active(%struct.kernfs_node* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %94 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = icmp ne i8* %95, %96
  br label %98

98:                                               ; preds = %92, %88
  %99 = phi i1 [ true, %88 ], [ %97, %92 ]
  br label %100

100:                                              ; preds = %98, %85
  %101 = phi i1 [ false, %85 ], [ %99, %98 ]
  br i1 %101, label %102, label %113

102:                                              ; preds = %100
  %103 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %104 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %103, i32 0, i32 2
  %105 = call %struct.rb_node* @rb_next(i32* %104)
  store %struct.rb_node* %105, %struct.rb_node** %11, align 8
  %106 = load %struct.rb_node*, %struct.rb_node** %11, align 8
  %107 = icmp ne %struct.rb_node* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %102
  store %struct.kernfs_node* null, %struct.kernfs_node** %8, align 8
  br label %112

109:                                              ; preds = %102
  %110 = load %struct.rb_node*, %struct.rb_node** %11, align 8
  %111 = call %struct.kernfs_node* @rb_to_kn(%struct.rb_node* %110)
  store %struct.kernfs_node* %111, %struct.kernfs_node** %8, align 8
  br label %112

112:                                              ; preds = %109, %108
  br label %85

113:                                              ; preds = %100
  %114 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  ret %struct.kernfs_node* %114
}

declare dso_local i64 @kernfs_active(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

declare dso_local %struct.kernfs_node* @rb_to_kn(%struct.rb_node*) #1

declare dso_local %struct.rb_node* @rb_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
