; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_free_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_free_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovl_fs = type { i32, i32, i64, %struct.TYPE_3__, %struct.ovl_fs*, %struct.ovl_fs*, i32, %struct.TYPE_4__*, i32, %struct.TYPE_4__*, i64, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.ovl_fs*, %struct.ovl_fs*, %struct.ovl_fs*, %struct.ovl_fs* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ovl_fs*)* @ovl_free_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ovl_free_fs(%struct.ovl_fs* %0) #0 {
  %2 = alloca %struct.ovl_fs*, align 8
  %3 = alloca i32, align 4
  store %struct.ovl_fs* %0, %struct.ovl_fs** %2, align 8
  %4 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %5 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %4, i32 0, i32 18
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @iput(i32 %6)
  %8 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %9 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %8, i32 0, i32 17
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @iput(i32 %10)
  %12 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %13 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %12, i32 0, i32 16
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @iput(i32 %14)
  %16 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %17 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %16, i32 0, i32 15
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @iput(i32 %18)
  %20 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %21 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %20, i32 0, i32 14
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dput(i32 %22)
  %24 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %25 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %24, i32 0, i32 13
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dput(i32 %26)
  %28 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %29 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %28, i32 0, i32 12
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %34 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %33, i32 0, i32 11
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ovl_inuse_unlock(i32 %35)
  br label %37

37:                                               ; preds = %32, %1
  %38 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %39 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %38, i32 0, i32 11
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dput(i32 %40)
  %42 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %43 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %42, i32 0, i32 10
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %48 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %47, i32 0, i32 9
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ovl_inuse_unlock(i32 %51)
  br label %53

53:                                               ; preds = %46, %37
  %54 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %55 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %54, i32 0, i32 9
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i32 @mntput(%struct.TYPE_4__* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %83, %53
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %61 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %58
  %65 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %66 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %65, i32 0, i32 5
  %67 = load %struct.ovl_fs*, %struct.ovl_fs** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %67, i64 %69
  %71 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @iput(i32 %72)
  %74 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %75 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %74, i32 0, i32 5
  %76 = load %struct.ovl_fs*, %struct.ovl_fs** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %76, i64 %78
  %80 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %79, i32 0, i32 7
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = call i32 @mntput(%struct.TYPE_4__* %81)
  br label %83

83:                                               ; preds = %64
  %84 = load i32, i32* %3, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %58

86:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %103, %86
  %88 = load i32, i32* %3, align 4
  %89 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %90 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ult i32 %88, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %87
  %94 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %95 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %94, i32 0, i32 4
  %96 = load %struct.ovl_fs*, %struct.ovl_fs** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %96, i64 %98
  %100 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @free_anon_bdev(i32 %101)
  br label %103

103:                                              ; preds = %93
  %104 = load i32, i32* %3, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %3, align 4
  br label %87

106:                                              ; preds = %87
  %107 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %108 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %107, i32 0, i32 5
  %109 = load %struct.ovl_fs*, %struct.ovl_fs** %108, align 8
  %110 = call i32 @kfree(%struct.ovl_fs* %109)
  %111 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %112 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %111, i32 0, i32 4
  %113 = load %struct.ovl_fs*, %struct.ovl_fs** %112, align 8
  %114 = call i32 @kfree(%struct.ovl_fs* %113)
  %115 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %116 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  %118 = load %struct.ovl_fs*, %struct.ovl_fs** %117, align 8
  %119 = call i32 @kfree(%struct.ovl_fs* %118)
  %120 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %121 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load %struct.ovl_fs*, %struct.ovl_fs** %122, align 8
  %124 = call i32 @kfree(%struct.ovl_fs* %123)
  %125 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %126 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load %struct.ovl_fs*, %struct.ovl_fs** %127, align 8
  %129 = call i32 @kfree(%struct.ovl_fs* %128)
  %130 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %131 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load %struct.ovl_fs*, %struct.ovl_fs** %132, align 8
  %134 = call i32 @kfree(%struct.ovl_fs* %133)
  %135 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %136 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %106
  %140 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %141 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @put_cred(i64 %142)
  br label %144

144:                                              ; preds = %139, %106
  %145 = load %struct.ovl_fs*, %struct.ovl_fs** %2, align 8
  %146 = call i32 @kfree(%struct.ovl_fs* %145)
  ret void
}

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @dput(i32) #1

declare dso_local i32 @ovl_inuse_unlock(i32) #1

declare dso_local i32 @mntput(%struct.TYPE_4__*) #1

declare dso_local i32 @free_anon_bdev(i32) #1

declare dso_local i32 @kfree(%struct.ovl_fs*) #1

declare dso_local i32 @put_cred(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
