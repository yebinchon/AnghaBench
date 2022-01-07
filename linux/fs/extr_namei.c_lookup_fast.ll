; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_lookup_fast.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_lookup_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dentry*, %struct.vfsmount* }
%struct.dentry = type { i32 }
%struct.vfsmount = type { i32 }
%struct.path = type { %struct.dentry*, %struct.vfsmount* }
%struct.inode = type { i32 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*, %struct.path*, %struct.inode**, i32*)* @lookup_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_fast(%struct.nameidata* %0, %struct.path* %1, %struct.inode** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nameidata*, align 8
  %7 = alloca %struct.path*, align 8
  %8 = alloca %struct.inode**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vfsmount*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %6, align 8
  store %struct.path* %1, %struct.path** %7, align 8
  store %struct.inode** %2, %struct.inode*** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %18 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.vfsmount*, %struct.vfsmount** %19, align 8
  store %struct.vfsmount* %20, %struct.vfsmount** %10, align 8
  %21 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %22 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.dentry*, %struct.dentry** %23, align 8
  store %struct.dentry* %24, %struct.dentry** %12, align 8
  store i32 1, i32* %13, align 4
  %25 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %26 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @LOOKUP_RCU, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %137

31:                                               ; preds = %4
  %32 = load %struct.dentry*, %struct.dentry** %12, align 8
  %33 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %34 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %33, i32 0, i32 1
  %35 = call %struct.dentry* @__d_lookup_rcu(%struct.dentry* %32, i32* %34, i32* %15)
  store %struct.dentry* %35, %struct.dentry** %11, align 8
  %36 = load %struct.dentry*, %struct.dentry** %11, align 8
  %37 = icmp ne %struct.dentry* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %31
  %43 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %44 = call i64 @unlazy_walk(%struct.nameidata* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @ECHILD, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %204

49:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %204

50:                                               ; preds = %31
  %51 = load %struct.dentry*, %struct.dentry** %11, align 8
  %52 = call %struct.inode* @d_backing_inode(%struct.dentry* %51)
  %53 = load %struct.inode**, %struct.inode*** %8, align 8
  store %struct.inode* %52, %struct.inode** %53, align 8
  %54 = load %struct.dentry*, %struct.dentry** %11, align 8
  %55 = call i32 @d_is_negative(%struct.dentry* %54)
  store i32 %55, i32* %16, align 4
  %56 = load %struct.dentry*, %struct.dentry** %11, align 8
  %57 = getelementptr inbounds %struct.dentry, %struct.dentry* %56, i32 0, i32 0
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @read_seqcount_retry(i32* %57, i32 %58)
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load i32, i32* @ECHILD, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %204

65:                                               ; preds = %50
  %66 = load %struct.dentry*, %struct.dentry** %12, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 0
  %68 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %69 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @__read_seqcount_retry(i32* %67, i32 %70)
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* @ECHILD, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %204

77:                                               ; preds = %65
  %78 = load i32, i32* %15, align 4
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  %80 = load %struct.dentry*, %struct.dentry** %11, align 8
  %81 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %82 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @d_revalidate(%struct.dentry* %80, i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp sgt i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i64 @likely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %77
  %91 = load i32, i32* %16, align 4
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* @ENOENT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %204

97:                                               ; preds = %90
  %98 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %99 = load %struct.path*, %struct.path** %7, align 8
  %100 = getelementptr inbounds %struct.path, %struct.path* %99, i32 0, i32 1
  store %struct.vfsmount* %98, %struct.vfsmount** %100, align 8
  %101 = load %struct.dentry*, %struct.dentry** %11, align 8
  %102 = load %struct.path*, %struct.path** %7, align 8
  %103 = getelementptr inbounds %struct.path, %struct.path* %102, i32 0, i32 0
  store %struct.dentry* %101, %struct.dentry** %103, align 8
  %104 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %105 = load %struct.path*, %struct.path** %7, align 8
  %106 = load %struct.inode**, %struct.inode*** %8, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @__follow_mount_rcu(%struct.nameidata* %104, %struct.path* %105, %struct.inode** %106, i32* %107)
  %109 = call i64 @likely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %97
  store i32 1, i32* %5, align 4
  br label %204

112:                                              ; preds = %97
  br label %113

113:                                              ; preds = %112, %77
  %114 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %115 = load %struct.dentry*, %struct.dentry** %11, align 8
  %116 = load i32, i32* %15, align 4
  %117 = call i64 @unlazy_child(%struct.nameidata* %114, %struct.dentry* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i32, i32* @ECHILD, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %5, align 4
  br label %204

122:                                              ; preds = %113
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @ECHILD, align 4
  %125 = sub nsw i32 0, %124
  %126 = icmp eq i32 %123, %125
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %122
  %131 = load %struct.dentry*, %struct.dentry** %11, align 8
  %132 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %133 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @d_revalidate(%struct.dentry* %131, i32 %134)
  store i32 %135, i32* %13, align 4
  br label %136

136:                                              ; preds = %130, %122
  br label %155

137:                                              ; preds = %4
  %138 = load %struct.dentry*, %struct.dentry** %12, align 8
  %139 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %140 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %139, i32 0, i32 1
  %141 = call %struct.dentry* @__d_lookup(%struct.dentry* %138, i32* %140)
  store %struct.dentry* %141, %struct.dentry** %11, align 8
  %142 = load %struct.dentry*, %struct.dentry** %11, align 8
  %143 = icmp ne %struct.dentry* %142, null
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = call i64 @unlikely(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %137
  store i32 0, i32* %5, align 4
  br label %204

149:                                              ; preds = %137
  %150 = load %struct.dentry*, %struct.dentry** %11, align 8
  %151 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %152 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @d_revalidate(%struct.dentry* %150, i32 %153)
  store i32 %154, i32* %13, align 4
  br label %155

155:                                              ; preds = %149, %136
  %156 = load i32, i32* %13, align 4
  %157 = icmp sle i32 %156, 0
  %158 = zext i1 %157 to i32
  %159 = call i64 @unlikely(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %155
  %162 = load i32, i32* %13, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load %struct.dentry*, %struct.dentry** %11, align 8
  %166 = call i32 @d_invalidate(%struct.dentry* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load %struct.dentry*, %struct.dentry** %11, align 8
  %169 = call i32 @dput(%struct.dentry* %168)
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %5, align 4
  br label %204

171:                                              ; preds = %155
  %172 = load %struct.dentry*, %struct.dentry** %11, align 8
  %173 = call i32 @d_is_negative(%struct.dentry* %172)
  %174 = call i64 @unlikely(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = load %struct.dentry*, %struct.dentry** %11, align 8
  %178 = call i32 @dput(%struct.dentry* %177)
  %179 = load i32, i32* @ENOENT, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %5, align 4
  br label %204

181:                                              ; preds = %171
  %182 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %183 = load %struct.path*, %struct.path** %7, align 8
  %184 = getelementptr inbounds %struct.path, %struct.path* %183, i32 0, i32 1
  store %struct.vfsmount* %182, %struct.vfsmount** %184, align 8
  %185 = load %struct.dentry*, %struct.dentry** %11, align 8
  %186 = load %struct.path*, %struct.path** %7, align 8
  %187 = getelementptr inbounds %struct.path, %struct.path* %186, i32 0, i32 0
  store %struct.dentry* %185, %struct.dentry** %187, align 8
  %188 = load %struct.path*, %struct.path** %7, align 8
  %189 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %190 = call i32 @follow_managed(%struct.path* %188, %struct.nameidata* %189)
  store i32 %190, i32* %14, align 4
  %191 = load i32, i32* %14, align 4
  %192 = icmp sgt i32 %191, 0
  %193 = zext i1 %192 to i32
  %194 = call i64 @likely(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %181
  %197 = load %struct.path*, %struct.path** %7, align 8
  %198 = getelementptr inbounds %struct.path, %struct.path* %197, i32 0, i32 0
  %199 = load %struct.dentry*, %struct.dentry** %198, align 8
  %200 = call %struct.inode* @d_backing_inode(%struct.dentry* %199)
  %201 = load %struct.inode**, %struct.inode*** %8, align 8
  store %struct.inode* %200, %struct.inode** %201, align 8
  br label %202

202:                                              ; preds = %196, %181
  %203 = load i32, i32* %14, align 4
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %202, %176, %167, %148, %119, %111, %94, %74, %62, %49, %46
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local %struct.dentry* @__d_lookup_rcu(%struct.dentry*, i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @unlazy_walk(%struct.nameidata*) #1

declare dso_local %struct.inode* @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @d_is_negative(%struct.dentry*) #1

declare dso_local i32 @read_seqcount_retry(i32*, i32) #1

declare dso_local i32 @__read_seqcount_retry(i32*, i32) #1

declare dso_local i32 @d_revalidate(%struct.dentry*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__follow_mount_rcu(%struct.nameidata*, %struct.path*, %struct.inode**, i32*) #1

declare dso_local i64 @unlazy_child(%struct.nameidata*, %struct.dentry*, i32) #1

declare dso_local %struct.dentry* @__d_lookup(%struct.dentry*, i32*) #1

declare dso_local i32 @d_invalidate(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @follow_managed(%struct.path*, %struct.nameidata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
