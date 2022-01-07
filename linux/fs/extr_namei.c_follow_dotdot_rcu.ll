; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_follow_dotdot_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_follow_dotdot_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, %struct.inode*, %struct.TYPE_6__, i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_6__ = type { %struct.dentry*, %struct.TYPE_5__* }
%struct.dentry = type { i32, %struct.inode*, %struct.dentry* }
%struct.TYPE_5__ = type { %struct.dentry* }
%struct.mount = type { %struct.TYPE_5__, %struct.dentry*, %struct.mount* }

@ECHILD = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@mount_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*)* @follow_dotdot_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @follow_dotdot_rcu(%struct.nameidata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nameidata*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.mount*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mount*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %3, align 8
  %14 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %15 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 1
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %4, align 8
  br label %17

17:                                               ; preds = %1, %134
  %18 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %19 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 2
  %20 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %21 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %20, i32 0, i32 4
  %22 = call i64 @path_equal(%struct.TYPE_6__* %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %135

25:                                               ; preds = %17
  %26 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %27 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.dentry*, %struct.dentry** %28, align 8
  %30 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %31 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.dentry*, %struct.dentry** %34, align 8
  %36 = icmp ne %struct.dentry* %29, %35
  br i1 %36, label %37, label %83

37:                                               ; preds = %25
  %38 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %39 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.dentry*, %struct.dentry** %40, align 8
  store %struct.dentry* %41, %struct.dentry** %5, align 8
  %42 = load %struct.dentry*, %struct.dentry** %5, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 2
  %44 = load %struct.dentry*, %struct.dentry** %43, align 8
  store %struct.dentry* %44, %struct.dentry** %6, align 8
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 1
  %47 = load %struct.inode*, %struct.inode** %46, align 8
  store %struct.inode* %47, %struct.inode** %4, align 8
  %48 = load %struct.dentry*, %struct.dentry** %6, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 0
  %50 = call i8* @read_seqcount_begin(i32* %49)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %7, align 4
  %52 = load %struct.dentry*, %struct.dentry** %5, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 0
  %54 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %55 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @read_seqcount_retry(i32* %53, i32 %56)
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %37
  %61 = load i32, i32* @ECHILD, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %199

63:                                               ; preds = %37
  %64 = load %struct.dentry*, %struct.dentry** %6, align 8
  %65 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %66 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store %struct.dentry* %64, %struct.dentry** %67, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %70 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %72 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %71, i32 0, i32 2
  %73 = call i32 @path_connected(%struct.TYPE_6__* %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %63
  %80 = load i32, i32* @ENOENT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %199

82:                                               ; preds = %63
  br label %135

83:                                               ; preds = %25
  %84 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %85 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = call %struct.mount* @real_mount(%struct.TYPE_5__* %87)
  store %struct.mount* %88, %struct.mount** %8, align 8
  %89 = load %struct.mount*, %struct.mount** %8, align 8
  %90 = getelementptr inbounds %struct.mount, %struct.mount* %89, i32 0, i32 2
  %91 = load %struct.mount*, %struct.mount** %90, align 8
  store %struct.mount* %91, %struct.mount** %9, align 8
  %92 = load %struct.mount*, %struct.mount** %8, align 8
  %93 = getelementptr inbounds %struct.mount, %struct.mount* %92, i32 0, i32 1
  %94 = load %struct.dentry*, %struct.dentry** %93, align 8
  store %struct.dentry* %94, %struct.dentry** %10, align 8
  %95 = load %struct.dentry*, %struct.dentry** %10, align 8
  %96 = getelementptr inbounds %struct.dentry, %struct.dentry* %95, i32 0, i32 1
  %97 = load %struct.inode*, %struct.inode** %96, align 8
  store %struct.inode* %97, %struct.inode** %11, align 8
  %98 = load %struct.dentry*, %struct.dentry** %10, align 8
  %99 = getelementptr inbounds %struct.dentry, %struct.dentry* %98, i32 0, i32 0
  %100 = call i8* @read_seqcount_begin(i32* %99)
  %101 = ptrtoint i8* %100 to i32
  store i32 %101, i32* %12, align 4
  %102 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %103 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @read_seqretry(i32* @mount_lock, i32 %104)
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %83
  %109 = load i32, i32* @ECHILD, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %199

111:                                              ; preds = %83
  %112 = load %struct.mount*, %struct.mount** %9, align 8
  %113 = getelementptr inbounds %struct.mount, %struct.mount* %112, i32 0, i32 0
  %114 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %115 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = icmp eq %struct.TYPE_5__* %113, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %135

120:                                              ; preds = %111
  %121 = load %struct.dentry*, %struct.dentry** %10, align 8
  %122 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %123 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store %struct.dentry* %121, %struct.dentry** %124, align 8
  %125 = load %struct.mount*, %struct.mount** %9, align 8
  %126 = getelementptr inbounds %struct.mount, %struct.mount* %125, i32 0, i32 0
  %127 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %128 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  store %struct.TYPE_5__* %126, %struct.TYPE_5__** %129, align 8
  %130 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %130, %struct.inode** %4, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %133 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %120
  br label %17

135:                                              ; preds = %119, %82, %24
  br label %136

136:                                              ; preds = %167, %135
  %137 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %138 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load %struct.dentry*, %struct.dentry** %139, align 8
  %141 = call i32 @d_mountpoint(%struct.dentry* %140)
  %142 = call i64 @unlikely(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %195

144:                                              ; preds = %136
  %145 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %146 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %150 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load %struct.dentry*, %struct.dentry** %151, align 8
  %153 = call %struct.mount* @__lookup_mnt(%struct.TYPE_5__* %148, %struct.dentry* %152)
  store %struct.mount* %153, %struct.mount** %13, align 8
  %154 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %155 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @read_seqretry(i32* @mount_lock, i32 %156)
  %158 = call i64 @unlikely(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %144
  %161 = load i32, i32* @ECHILD, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %2, align 4
  br label %199

163:                                              ; preds = %144
  %164 = load %struct.mount*, %struct.mount** %13, align 8
  %165 = icmp ne %struct.mount* %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %163
  br label %195

167:                                              ; preds = %163
  %168 = load %struct.mount*, %struct.mount** %13, align 8
  %169 = getelementptr inbounds %struct.mount, %struct.mount* %168, i32 0, i32 0
  %170 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %171 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  store %struct.TYPE_5__* %169, %struct.TYPE_5__** %172, align 8
  %173 = load %struct.mount*, %struct.mount** %13, align 8
  %174 = getelementptr inbounds %struct.mount, %struct.mount* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load %struct.dentry*, %struct.dentry** %175, align 8
  %177 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %178 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  store %struct.dentry* %176, %struct.dentry** %179, align 8
  %180 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %181 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load %struct.dentry*, %struct.dentry** %182, align 8
  %184 = getelementptr inbounds %struct.dentry, %struct.dentry* %183, i32 0, i32 1
  %185 = load %struct.inode*, %struct.inode** %184, align 8
  store %struct.inode* %185, %struct.inode** %4, align 8
  %186 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %187 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load %struct.dentry*, %struct.dentry** %188, align 8
  %190 = getelementptr inbounds %struct.dentry, %struct.dentry* %189, i32 0, i32 0
  %191 = call i8* @read_seqcount_begin(i32* %190)
  %192 = ptrtoint i8* %191 to i32
  %193 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %194 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 8
  br label %136

195:                                              ; preds = %166, %136
  %196 = load %struct.inode*, %struct.inode** %4, align 8
  %197 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %198 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %197, i32 0, i32 1
  store %struct.inode* %196, %struct.inode** %198, align 8
  store i32 0, i32* %2, align 4
  br label %199

199:                                              ; preds = %195, %160, %108, %79, %60
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i64 @path_equal(%struct.TYPE_6__*, i32*) #1

declare dso_local i8* @read_seqcount_begin(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @read_seqcount_retry(i32*, i32) #1

declare dso_local i32 @path_connected(%struct.TYPE_6__*) #1

declare dso_local %struct.mount* @real_mount(%struct.TYPE_5__*) #1

declare dso_local i32 @read_seqretry(i32*, i32) #1

declare dso_local i32 @d_mountpoint(%struct.dentry*) #1

declare dso_local %struct.mount* @__lookup_mnt(%struct.TYPE_5__*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
