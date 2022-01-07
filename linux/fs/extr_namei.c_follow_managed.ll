; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_follow_managed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_follow_managed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.vfsmount*, %struct.TYPE_5__* }
%struct.vfsmount = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.path*, i32)* }
%struct.nameidata = type { i32 }

@DCACHE_MANAGED_DENTRY = common dso_local global i32 0, align 4
@DCACHE_MANAGE_TRANSIT = common dso_local global i32 0, align 4
@DCACHE_MOUNTED = common dso_local global i32 0, align 4
@DCACHE_NEED_AUTOMOUNT = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@LOOKUP_JUMPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.nameidata*)* @follow_managed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @follow_managed(%struct.path* %0, %struct.nameidata* %1) #0 {
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfsmount*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  store %struct.nameidata* %1, %struct.nameidata** %4, align 8
  %10 = load %struct.path*, %struct.path** %3, align 8
  %11 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %12 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  store %struct.vfsmount* %12, %struct.vfsmount** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %112, %89, %2
  %14 = load %struct.path*, %struct.path** %3, align 8
  %15 = getelementptr inbounds %struct.path, %struct.path* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @READ_ONCE(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @DCACHE_MANAGED_DENTRY, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %114

28:                                               ; preds = %13
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @DCACHE_MANAGE_TRANSIT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %67

33:                                               ; preds = %28
  %34 = load %struct.path*, %struct.path** %3, align 8
  %35 = getelementptr inbounds %struct.path, %struct.path* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.path*, %struct.path** %3, align 8
  %44 = getelementptr inbounds %struct.path, %struct.path* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32 (%struct.path*, i32)*, i32 (%struct.path*, i32)** %48, align 8
  %50 = icmp ne i32 (%struct.path*, i32)* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load %struct.path*, %struct.path** %3, align 8
  %55 = getelementptr inbounds %struct.path, %struct.path* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.path*, i32)*, i32 (%struct.path*, i32)** %59, align 8
  %61 = load %struct.path*, %struct.path** %3, align 8
  %62 = call i32 %60(%struct.path* %61, i32 0)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %33
  br label %114

66:                                               ; preds = %33
  br label %67

67:                                               ; preds = %66, %28
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @DCACHE_MOUNTED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %67
  %73 = load %struct.path*, %struct.path** %3, align 8
  %74 = call %struct.vfsmount* @lookup_mnt(%struct.path* %73)
  store %struct.vfsmount* %74, %struct.vfsmount** %9, align 8
  %75 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %76 = icmp ne %struct.vfsmount* %75, null
  br i1 %76, label %77, label %99

77:                                               ; preds = %72
  %78 = load %struct.path*, %struct.path** %3, align 8
  %79 = getelementptr inbounds %struct.path, %struct.path* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = call i32 @dput(%struct.TYPE_5__* %80)
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load %struct.path*, %struct.path** %3, align 8
  %86 = getelementptr inbounds %struct.path, %struct.path* %85, i32 0, i32 0
  %87 = load %struct.vfsmount*, %struct.vfsmount** %86, align 8
  %88 = call i32 @mntput(%struct.vfsmount* %87)
  br label %89

89:                                               ; preds = %84, %77
  %90 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %91 = load %struct.path*, %struct.path** %3, align 8
  %92 = getelementptr inbounds %struct.path, %struct.path* %91, i32 0, i32 0
  store %struct.vfsmount* %90, %struct.vfsmount** %92, align 8
  %93 = load %struct.vfsmount*, %struct.vfsmount** %9, align 8
  %94 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call %struct.TYPE_5__* @dget(i32 %95)
  %97 = load %struct.path*, %struct.path** %3, align 8
  %98 = getelementptr inbounds %struct.path, %struct.path* %97, i32 0, i32 1
  store %struct.TYPE_5__* %96, %struct.TYPE_5__** %98, align 8
  store i32 1, i32* %7, align 4
  br label %13

99:                                               ; preds = %72
  br label %100

100:                                              ; preds = %99, %67
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @DCACHE_NEED_AUTOMOUNT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.path*, %struct.path** %3, align 8
  %107 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %108 = call i32 @follow_automount(%struct.path* %106, %struct.nameidata* %107, i32* %7)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %114

112:                                              ; preds = %105
  br label %13

113:                                              ; preds = %100
  br label %114

114:                                              ; preds = %113, %111, %65, %13
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load %struct.path*, %struct.path** %3, align 8
  %119 = getelementptr inbounds %struct.path, %struct.path* %118, i32 0, i32 0
  %120 = load %struct.vfsmount*, %struct.vfsmount** %119, align 8
  %121 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %122 = icmp eq %struct.vfsmount* %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load %struct.path*, %struct.path** %3, align 8
  %125 = getelementptr inbounds %struct.path, %struct.path* %124, i32 0, i32 0
  %126 = load %struct.vfsmount*, %struct.vfsmount** %125, align 8
  %127 = call i32 @mntput(%struct.vfsmount* %126)
  br label %128

128:                                              ; preds = %123, %117, %114
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @EISDIR, align 4
  %131 = sub nsw i32 0, %130
  %132 = icmp eq i32 %129, %131
  br i1 %132, label %136, label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %133, %128
  store i32 1, i32* %8, align 4
  br label %137

137:                                              ; preds = %136, %133
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load i32, i32* @LOOKUP_JUMPED, align 4
  %142 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %143 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %140, %137
  %147 = load i32, i32* %8, align 4
  %148 = icmp slt i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i64 @unlikely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load %struct.path*, %struct.path** %3, align 8
  %154 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %155 = call i32 @path_put_conditional(%struct.path* %153, %struct.nameidata* %154)
  br label %156

156:                                              ; preds = %152, %146
  %157 = load i32, i32* %8, align 4
  ret i32 %157
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.vfsmount* @lookup_mnt(%struct.path*) #1

declare dso_local i32 @dput(%struct.TYPE_5__*) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

declare dso_local %struct.TYPE_5__* @dget(i32) #1

declare dso_local i32 @follow_automount(%struct.path*, %struct.nameidata*, i32*) #1

declare dso_local i32 @path_put_conditional(%struct.path*, %struct.nameidata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
